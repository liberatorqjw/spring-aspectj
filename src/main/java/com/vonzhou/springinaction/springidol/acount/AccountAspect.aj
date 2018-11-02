package com.vonzhou.springinaction.springidol.acount;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @Author: Qinjiawei
 * @Description
 * @Date: Created in 下午4:45  18-11-1
 */
public aspect AccountAspect {
    private static final Logger logger = LoggerFactory.getLogger(AccountAspect.class);
    final int MIN_BALANCE = 10;

    pointcut callWithDraw(int amount, Account account):
            call(boolean Account.withdraw(int)) && args(amount) && target(account);

    before(int amount, Account account) : callWithDraw(amount, account) {
        logger.info(" Balance before withdrawal: {}", account.balance);
        System.out.println("Balance before withdrawal:" +account.balance);
        logger.info(" Withdraw ammout: {}", amount);
        System.out.println("Withdraw ammout:" +amount);;
    }

    boolean around(int amount, Account account) : callWithDraw(amount, account) {
        if (account.balance < amount) {
            logger.info("Withdrawal Rejected!");
            return false;
        }
        return proceed(amount, account);
    }

    after(int amount, Account balance) : callWithDraw(amount, balance) {
        logger.info("Balance after withdrawal : {}", balance.balance);
        System.out.println("Balance after withdrawal : " +balance.balance);
    }
}