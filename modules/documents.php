<?php
class Document
{
	public static function prepare($vars, $doc_file) {

        // $replacements = array ('\\' => "\\\\",
                               // '{'  => "\{",
                               // '}'  => "\}");

        $document = file_get_contents($doc_file);
        if(!$document) {
            return false;
        }

        foreach($vars as $key=>$value) {
            $search = "%%".strtoupper($key)."%%";
            // foreach($replacements as $orig => $replace) {
                // $value = str_replace($orig, $replace, $value);
            // }

			//$value = iconv($charset, "UTF-8", $value);
			$value = mb_convert_encoding($value, 'cp1251', 'utf8'); 
            $document = str_replace($search, $value, $document);
			//var_dump($value);
        }

        return $document;
		
		// header("Content-type: application/msword");
		// header("Content-disposition: inline; filename=joboffer.rtf");
		// header("Content-length: " . strlen($document));
		// echo $document;
    }
}
?>