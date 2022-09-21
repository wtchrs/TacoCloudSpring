package wtchrs.tacocloud.data;

import wtchrs.tacocloud.domain.Order;

public interface OrderRepository {
    Order save(Order order);
}
