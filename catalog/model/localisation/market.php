<?php
class ModelLocalisationMarket extends Model {
	public function getMarket($market_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "market WHERE market_id = '" . (int)$market_id . "' AND status = '1'");

		return $query->row;
	}

	public function getMarkets() {
		$market_data = $this->cache->get('market.status');

		if (!$market_data) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "market WHERE status = '1' ORDER BY name ASC");

			$market_data = $query->rows;

			$this->cache->set('market.status', $market_data);
		}

		return $market_data;
	}
}