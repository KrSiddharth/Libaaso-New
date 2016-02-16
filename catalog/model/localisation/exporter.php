<?php
class ModelLocalisationExporter extends Model {
	public function getExporter($exporter_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "exporter WHERE exporter_id = '" . (int)$exporter_id . "' AND status = '1'");

		return $query->row;
	}

	public function getExporters() {
		$exporter_data = $this->cache->get('exporter.status');

		if (!$exporter_data) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "exporter WHERE status = '1' ORDER BY name ASC");

			$exporter_data = $query->rows;

			$this->cache->set('exporter.status', $exporter_data);
		}

		return $exporter_data;
	}
}