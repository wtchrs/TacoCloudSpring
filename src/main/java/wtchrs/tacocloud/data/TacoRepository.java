package wtchrs.tacocloud.data;

import wtchrs.tacocloud.domain.Taco;

public interface TacoRepository {
    Taco save(Taco design);
}
