package backed.shopping.shoppingsite.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import backed.shopping.shoppingsite.comman.vo.State;
import backed.shopping.shoppingsite.model.MasterState;

@Repository
public interface MasterStateRepository extends JpaRepository<MasterState, String> {

	Optional<List<MasterState>> findByStatus(Integer status);

	@Query("select new backed.shopping.shoppingsite.comman.vo.State(a.stateCode,a.stateName) from MasterState a where a.status='1' ")
	List<State> getState();

}
