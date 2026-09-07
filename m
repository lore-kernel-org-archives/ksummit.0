Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDCF24C06A
	for <ksummit@lists.linux.dev>; Mon,  7 Sep 2026 10:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788775429; cv=none; b=ThAP/B5P51XY3VVUZWCwLr36bzC7CUMHX7WBQY/l8alKYNjxhaXxopC3OwH+x969VpbN2OgnWoyt7xCuLjML8UyCwNQd/X7E3xc/oVsv9GNW0TDNbLF9el5YqmOVu4n6pGHlfx/VNWEA0JAQeRoC+g2vvJjPSPJBnc2HIbbywJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788775429; c=relaxed/simple;
	bh=taXTc8t7jL99ksLm+NqxwaqOr7jS9mZBmvjMDJCVE4g=;
	h=Date:From:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=cqxZTi+O3+apYZ/ga1WB8yd0xu03GjCAciTBjSJhP3is2k6n/qJ7xLcHVgwT0UE7ZVoMqEXobAgSLnkoh03D9ttUGSpmViKGTMEf9EsmrIR+O4HNC/BpHLjsqBqO0qOioXu39azB2aKvheV36bhHeYurCam2rg2YDKC8c8bfIqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fxR7JBaz; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fxR7JBaz"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1788775426;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=kFIjBLwrnQNzpzBiLrwLCrhQmY54y00GCWAvNQxRSQs=;
	b=fxR7JBazs95yUALhjX6jg+Y53eYy/bEIByNgVjqSmvBfhIhGIRCc1Ci9nUuKWYFKFMMkqD
	tSPpppNNF23NY5W36bQ68KiIxHP5HbDpuT8Zf46YPPpzoH12H1BwUeZe5olNVtHtK+ZM8a
	lpS0mtWe9BlP/maLA6OB/SAgVxLihnc=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-662-dOe828M1M62SiGjXsLjClg-1; Mon, 07 Sep 2026 06:03:45 -0400
X-MC-Unique: dOe828M1M62SiGjXsLjClg-1
X-Mimecast-MFC-AGG-ID: dOe828M1M62SiGjXsLjClg_1788775424
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-c24ae1a510cso350428166b.3
        for <ksummit@lists.linux.dev>; Mon, 07 Sep 2026 03:03:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788775424; x=1789380224;
        h=content-transfer-encoding:content-disposition:content-type
         :mime-version:message-id:subject:cc:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kFIjBLwrnQNzpzBiLrwLCrhQmY54y00GCWAvNQxRSQs=;
        b=TswoYURZRCVWqKO1ABupwY+pEvT2bti90nsTvCfGa0Qlk883i2+HS2b43kpqMUxKaQ
         m/Nq+3gMaJ113Bia04e5vsfCs973HZJnEy+XGHCvnKdwTq7qB4CE7F59/uYn5kq2XeCO
         vmjtJcq7whasFJVLIFz6SuN2108sarPSBvp7+KTJ8tOwUZdb+SJ/HU0KCQ3dYR4VtH3S
         pE7YeR5xvVW8vIsBrwU68K1Zi58lwHwVJUa/fM3rhEZQ5xeIF/pESUz39pi6+al/X37A
         qEOII7K9gb3v/4D8RGjJrGaqb6Y5yqVtTTSRYbCGMkwcKb5LqL/wEhtLEIauij7T8I38
         E1qQ==
X-Forwarded-Encrypted: i=1; AKwUvBwDSrCMjeITGL6Qw6L/wDpML+BNyonhikakmwAL+qMLLGwPRLnp48JPeujOnt+8FLv07R8gaeIF@lists.linux.dev
X-Gm-Message-State: AFuF++mj2R++1Y9VOV8ymhZysbl0i5aaL5de3xn1ndS5HJA1MJTkY2OG
	5Zy/uWO2967Q1WRXjuFce9KVgY5hLiLTGOhhd0ieMOA9jc3yFEZ6TKBSIzp+agIfvkA6xCrHlDT
	pzuL/z2bVF2XCRlfQVB85az5CbmcKEA9FzzcuVu2WsP8+//hoL/Grm7j840U=
X-Gm-Gg: AYBFou2P+I5X3UKh/qgFRBIeUiz35KU57etvWdkLMJ/a7FZ2UIXj1Lh6/e3qCZAJELj
	W1XeUbJ0i2Lku4V6IS1ad06DHDRGbNs71iSWfoq4Gzij5zE2FdObY/IRrZckSX7xNejz93KwSbN
	rcV6rwpztaZoSfKNIeS0rBBibtX3UKBgIvJSkqxTtJrSH5L1WnLXmrc8GP1Gjla27gX/605Mg2a
	zKDzfcTrTrpzp7XjBlpghoYf0YGJ1SBOCl9ENDCStWjl2O4knLMC60xd1J5M5xE99Bc3u9fGzNo
	IawVFJJm08hzdTlaCn7eBtWLoWpxBFj45cfvESNr8hgAdo4nSJaypjmAvmi+w1LDHEx8FBMoeqB
	r/Ws4uDB+kaIkBPMB5w95+0E=
X-Received: by 2002:a17:907:3c92:b0:c15:f598:60c0 with SMTP id a640c23a62f3a-c260c65c118mr914662166b.4.1788775423495;
        Mon, 07 Sep 2026 03:03:43 -0700 (PDT)
X-Received: by 2002:a17:907:3c92:b0:c15:f598:60c0 with SMTP id a640c23a62f3a-c260c65c118mr914659566b.4.1788775422856;
        Mon, 07 Sep 2026 03:03:42 -0700 (PDT)
Received: from redhat.com (IGLD-80-230-79-236.inter.net.il. [80.230.79.236])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c260d5921e2sm450449166b.46.2026.09.07.03.03.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 03:03:42 -0700 (PDT)
Date: Mon, 7 Sep 2026 06:03:39 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
Cc: sashiko-reviews@lists.linux.dev, Chris Mason <clm@fb.com>,
	Roman Gushchin <roman.gushchin@linux.dev>,
	virtualization@lists.linux-foundation.org, ksummit@lists.linux.dev
Subject: How is sashiko bot deciding whom to Cc?
Message-ID: <20260907055646-mutt-send-email-mst@kernel.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 2
X-Mimecast-MFC-PROC-ID: kaXmajVSMn33fcX4ZIVmPQtpZUkoaFdqYz80xWmx_bE_1788775424
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

There doesn't seem to be a Sashiko list, so I added ksummit as the most
likely one to catch attention. 

If you run b4 mbox  20260905153514.B55561F00A3A@smtp.kernel.org 
you will observe:

From: Karl Mehltretter <kmehltretter@gmail.com>
Date: Sat,  5 Sep 2026 17:20:59 +0200
To: "Michael S . Tsirkin" <mst@redhat.com>, Jason Wang <jasowangio@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>
Cc: Karl Mehltretter <kmehltretter@gmail.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, Eugenio Pérez <eperezma@redhat.com>, Dmitry
        Torokhov <dmitry.torokhov@gmail.com>, Rusty Russell <rusty@rustcorp.com.au>, Pawel Moll <pawel.moll@arm.com>, Cornelia Huck
        <cohuck@redhat.com>, Halil Pasic <pasic@linux.ibm.com>, Eric Farman <farman@linux.ibm.com>, Richard Weinberger <richard@nod.at>,
        Anton Ivanov <anton.ivanov@cambridgegreys.com>, Johannes Berg <johannes@sipsolutions.net>, Hans de Goede <hansg@kernel.org>,
        Ilpo Järvinen <ilpo.jarvinen@linux.intel.com>, Vadim Pasternak <vadimp@nvidia.com>, Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>, virtualization@lists.linux.dev, linux-input@vger.kernel.org,
        linux-s390@vger.kernel.org, kvm@vger.kernel.org, linux-um@lists.infradead.org, platform-driver-x86@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] virtio: implement synchronize_cbs for remaining transports
Message-Id: <20260905152059.89560-4-kmehltretter@gmail.com>
In-Reply-To: <20260905152059.89560-1-kmehltretter@gmail.com>

with this diffstat:
---
 arch/um/drivers/virtio_uml.c             | 10 ++++++++++
 drivers/platform/mellanox/mlxbf-tmfifo.c | 14 ++++++++++++++
 drivers/remoteproc/remoteproc_core.c     | 10 ++++++++++
 drivers/remoteproc/remoteproc_virtio.c   | 20 +++++++++++++++++---
 drivers/virtio/virtio_vdpa.c             | 21 ++++++++++++++++++++-
 include/linux/remoteproc.h               |  3 +++



the sashiko bot replied to it:

From: sashiko-bot@kernel.org
Date: Sat, 05 Sep 2026 15:35:14 +0000
To: Karl Mehltretter <kmehltretter@gmail.com>
Cc: linux-s390@vger.kernel.org, kvm@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>,
        Christian Borntraeger <borntraeger@linux.ibm.com>, linux-input@vger.kernel.org, dmitry.torokhov@gmail.com, Vasily Gorbik
        <gor@linux.ibm.com>
Reply-To: sashiko-reviews@lists.linux.dev
Subject: Re: [PATCH v2 3/3] virtio: implement synchronize_cbs for remaining transports
In-Reply-To: <20260905152059.89560-4-kmehltretter@gmail.com>
Message-Id: <20260905153514.B55561F00A3A@smtp.kernel.org>


So it picked some mailing lists but not others, and some specific people.

Is that opt-in somehow? I'll be happy to get Cc'd on the auto-review email.

-- 
James

