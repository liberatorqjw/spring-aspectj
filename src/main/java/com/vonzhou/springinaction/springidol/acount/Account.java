package com.vonzhou.springinaction.springidol.acount;

/**
 * @Author: Qinjiawei
 * @Description
 * @Date: Created in 下午4:45  18-11-1
 */
public class Account {
    int balance = 20;

    public boolean withdraw(int amount) {
        if (balance < amount) {
            return false;
        }
        balance = balance - amount;
        return true;
    }
}