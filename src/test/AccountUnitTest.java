import com.vonzhou.springinaction.springidol.acount.Account;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

/**
 * @Author: Qinjiawei
 * @Description
 * @Date: Created in 下午4:55  18-11-1
 */
public class AccountUnitTest {
    private Account account;

    @Before
    public void before() {
        account = new Account();
    }

    @Test
    public void givenBalance20AndMinBalance10_whenWithdraw5_thenSuccess() {
        assertTrue(account.withdraw(5));
    }

    @Test
    public void givenBalance20AndMinBalance10_whenWithdraw100_thenFail() {
        assertFalse(account.withdraw(100));
    }
}
