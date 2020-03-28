package com.secure.bankapp.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.secure.bankapp.model.Transaction;
import com.secure.bankapp.util.Constants.TRANSACTION_STATUS;


public interface TransactionRepository extends JpaRepository<Transaction, Long> {

	List<Transaction> findByIsCritical(boolean isCritical);

	Optional<Transaction> findById(Long id);
	
	List<Transaction> findByFromAccount(Long id);

	List<Transaction> findByIsCriticalAndStatus(boolean b, String pendingApproval);
	
	
}
