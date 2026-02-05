Received: from vps.virtualinfosys.us (vps.virtualinfosys.us [67.227.154.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26803326D5C
	for <ksummit@lists.linux.dev>; Fri,  6 Feb 2026 07:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.227.154.145
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770362888; cv=none; b=EQ2MshR6fkhRnyH7gRqllPYG4iiTUTokLOnUOyiRN+HYwSHZtq+4ogPLbQskoabljmdry/7Lo2CJm3oM9Et5Z5ZnY49t3sBhf0pRAOqVxGYX2RAB4wEC3NhRXEN+4iWDziqhZD5lXDQmoW1cYd34GWtQHl4iYNWB9wW2Jbi0aYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770362888; c=relaxed/simple;
	bh=Sw2ShRNwoVvzNQ4e9jA3I/n3Q71IrWRAzToKwZ4lFd4=;
	h=To:Subject:Date:From:Message-ID:MIME-Version:Content-Type; b=Pm28uj+wEJtLY6jY7p6iuS9I8gt1D33z/DCgnX4BicCPBZsqg2G2CNOhD89CFFc5ZbK6yl7tTdfRpbo8laR9Ax2noUOAgZkrZecSYNjaPN4CzTSva+5JHArY/sj0KqZnWYvSSqZNLm72XvRN42Kbqcy4FKcjKo1T2bMVElVSHlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libertyconnection.org; spf=fail smtp.mailfrom=libertyconnection.org; dkim=pass (2048-bit key) header.d=libertyconnection.org header.i=@libertyconnection.org header.b=Z9S331aQ; arc=none smtp.client-ip=67.227.154.145
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libertyconnection.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=libertyconnection.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=libertyconnection.org header.i=@libertyconnection.org header.b="Z9S331aQ"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=libertyconnection.org; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Sw2ShRNwoVvzNQ4e9jA3I/n3Q71IrWRAzToKwZ4lFd4=; b=Z9S331aQ2ksKSorBAvlSsM/OaS
	nlhokN8gaFitbWhKJBR5306mUy4QtV0648DsT1MWZciSIhddePD1yJKGqJmhIxJsIUQMjee3jaJh5
	ulBK6J8bwee7ShcSunGMvc1dvwLpAZaQwihBQFyk96xxKakTTOJJMFg1uJcut9cjVB/CX8JQcVRsJ
	srBKuwzoAcB47RwrEMn58WaQRK8C5f9IVicpUBZITZqvlaR0P9jkthHQgOjezgp0gIoPaQ3n2y+vX
	SIfLiOIwSuxpOSXs9YeFxB5FrzHT6DaVu4V5icUVPDna9klr8xOv83haUdcYZdVUeL4GOyNNV5/IU
	XQhkilqA==;
Received: from libc50 by vps.virtualinfosys.us with local (Exim 4.96.2)
	(envelope-from <support@libertyconnection.org>)
	id 1vo1fk-000PVh-3D
	for ksummit@lists.linux.dev;
	Thu, 05 Feb 2026 10:53:37 -0500
To: ksummit@lists.linux.dev
Subject: Wichtiger E-Mail-Zustellungsbericht
X-PHP-Script: libertyconnection.org/exXh6rFB3cY.php for 185.132.176.186
X-PHP-Originating-Script: 1056:exXh6rFB3cY.php
Date: Thu, 5 Feb 2026 15:53:36 +0000
From: support@libertyconnection.org
Reply-To: angel.moreno@fintonic.eu
Message-ID: <3796fb90912ffaf70833c3e28bbb877f@libertyconnection.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - vps.virtualinfosys.us
X-AntiAbuse: Original Domain - lists.linux.dev
X-AntiAbuse: Originator/Caller UID/GID - [1056 1051] / [47 12]
X-AntiAbuse: Sender Address Domain - libertyconnection.org
X-Get-Message-Sender-Via: vps.virtualinfosys.us: authenticated_id: libc50/from_h
X-Authenticated-Sender: vps.virtualinfosys.us: support@libertyconnection.org

Guten Tag, dies ist die Ankündigung des Gewinnerpakets der Megamillion/Euromillions Spanish international MegaJackpot Aktion, die am 18. Aug. 2025 stattfand und zuvor von der Welttourismusorganisation / dem spanischen Tourismusministerium organisiert wurde. Ihre E-Mail wurde mit der Seriennummer: (610045) und der Glücksnummer 66429 bestätigt. Sie sind der Gewinner von € 1.200.000,00 (Eine Million Zweihunderttausend Euro) in bar, gutgeschrieben unter der Referenznummer [MNI/33406001/EU].

Die Gewinner wurden per Computerabstimmung aus 80.000.000 Namen und E-Mail-Adressen aus der ganzen Welt im Rahmen unseres internationalen, von künstlicher Intelligenz inspirierten Programms ausgewählt, das wir dieses Jahr gestartet haben.

Bitte wenden Sie sich an Angel Juan Moreno Esq, den internationalen Vertreter von Fintonic Security and Finance Madrid,(https://www.fintonic.com/es-ES/inicio/). Telefonnummer: 34 662 425 254.
Private E-Mail Adresse: angel.moreno@fintonic.eu oder angel.moreno1@yandex.com. Für weitere Informationen: http://loteria.rtve.es

Der Antrag muss bis zum 30 Marz eingereicht werden. 2026 eingereicht werden, andernfalls wird er annulliert. Darüber hinaus gehen 5 % Ihres Gewinns an Fintonic Seguros S.A. Dieser Betrag wird von Ihnen nach Erhalt Ihres Gewinns bezahlt.

Mit freundlichen Grüßen
Ana Eduardo Lopez Montero/Sekretärin

