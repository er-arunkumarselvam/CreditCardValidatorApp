package com.creditcardvalidator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CardController {
	@Autowired
	CardDAO Card;
	
	@RequestMapping("show")
	public String show() {
		return "cardValidate.jsp";
		
	}
	@RequestMapping("card")
	public String card(Card card,Model model) {
		String c=card.getCardNo();
		int length=c.length();
		if(!(length==16)) {
			model.addAttribute("msg");
			return "cardValidate.jsp";
		}
//		Check Card Name
		if (length==16)
		{
			if((c.startsWith("51"))||
					(c.startsWith("52")) ||
					(c.startsWith("53")) ||
					(c.startsWith("54")) ||
					(c.startsWith("55")))
			{
				model.addAttribute("cardName", "Master");
			}
			else if((c.startsWith("60"))||
					(c.startsWith("6521")) ||
					(c.startsWith("6522")) ||
					(c.startsWith("5087")) ||
					(c.startsWith("5087"))) 
			{
				model.addAttribute("cardName", "Rupay");
			}
			else if(c.startsWith("8699"))
			{
				model.addAttribute("cardName","Voyager");
			}
			else if(c.startsWith("4"))
			{
				model.addAttribute("cardName","Visa");
			}
			else if(c.startsWith("3"))
			{
				model.addAttribute("cardName","Diners");
			}
		}
//		Card Validation using Luhn's Algorithm
		int sum=0;
		int[] cardNo=new int[c.length()];
		for(int i=0;i<c.length();i++) {
			cardNo[i]=Character.getNumericValue(c.charAt(i));
		}
		for(int i=0;i<cardNo.length;i++) {
			if(i%2==0) {
				cardNo[i]=cardNo[i]*2;
			}
			if(cardNo[i]>9) {
				cardNo[i]=(cardNo[i]%10)+(cardNo[i]/10);
			}
			sum=sum+cardNo[i];
		}
		if(sum%10==0) {
			Card.save(card);
			model.addAttribute("card", c );
			return "result.jsp";
		}
		model.addAttribute("msg", "Your Card No is Invalid");
		return "cardValidate.jsp";
	}
	
}
