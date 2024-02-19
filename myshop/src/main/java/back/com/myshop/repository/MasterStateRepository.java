package back.com.myshop.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import back.com.myshop.comman.State;
import back.com.myshop.entities.MasterState;

@Repository
public interface MasterStateRepository extends JpaRepository<MasterState, String> {

	Optional<List<MasterState>> findByStatus(Integer status);

	/*
	 * @Query("select new back.com.myshop.comman.State(a.stateCode,a.stateName) from MasterState a where a.status='1' "
	 * ) List<State> getState();
	 */
}
