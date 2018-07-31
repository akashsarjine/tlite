package com.tlite.dao;

import java.util.List;

import com.tlite.model.Client;
import com.tlite.model.Ground;
import com.tlite.model.Slot;

public interface ClientDao {

	int validateClient(String email, String password);

	void addGround(Ground ground);

	void updateGround(Ground ground);

	List<Ground> listGrounds(int client_id);

	void removeGround(int ground_id);

	Ground getGroundById(int ground_id);

	Client getClientById(int client_id);

	void addSlot(Slot slot);

	void updateSlot(Slot slot);

	List<Slot> listSlotsByGround(int ground_id);

	Slot getSlotById(int slot_id);

	void removeSlot(int slot_id);

}
