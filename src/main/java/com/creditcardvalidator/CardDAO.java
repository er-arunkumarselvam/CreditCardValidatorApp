package com.creditcardvalidator;

import org.springframework.data.repository.CrudRepository;

public interface CardDAO extends CrudRepository<Card, Integer> {

}
