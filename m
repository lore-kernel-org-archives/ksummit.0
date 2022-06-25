Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D8F7C
	for <ksummit@lists.linux.dev>; Sat, 25 Jun 2022 14:00:33 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:281:8300:73::5f6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id EE38C4B0;
	Sat, 25 Jun 2022 14:00:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net EE38C4B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
	t=1656165633; bh=YastemKghATl8TYZkEaI6tzjMiNfaGo1mGVKRO3G9X0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=FMN/rW+BhHK7LOGOhPrXvko474r07v+rytZWFNJcONsq0lBAuVfUymrapgdF9NeUl
	 mBWc/WuWJU+ayjasI1vtknME4qsobrqxBocmoz7uEKaAuz9g5FYMXddBwnGUIEw3Cz
	 H9+4nbImSNFiTqjMtgjJiUOUYH9xD+yP58zyBUb9DvmAbOb6K+uWZdyLXRkMWHrUhr
	 T2mwFQT/omSji2GhTRnVEHRmI+SWzt6ZsAOFJJFf13VW/oalhhSv5DkalhRJIDADeS
	 MLt9qsFvHhgoGp2QPDLBzFmYBCk3AdkMFgTeNY7njsr0gql6OCm+Q21p3sQfNnpQmH
	 aGBUxE1eRh5qw==
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Jani Nikula <jani.nikula@intel.com>,
 ksummit-discuss@lists.linuxfoundation.org, ksummit@lists.linux.dev, Markus
 Heiser <markus.heiser@darmarit.de>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] What kernel documentation could be
In-Reply-To: <20220625101029.67f14c4c@sal.lan>
References: <87sfo3nh3t.fsf@meer.lwn.net> <20220618092447.5ebed314@sal.lan>
 <875ykrrb45.fsf@intel.com> <20220623105747.079ac92b@sal.lan>
 <87a6a38plu.fsf@meer.lwn.net> <20220624083307.159824bd@sal.lan>
 <87tu891xfv.fsf@meer.lwn.net> <20220625101029.67f14c4c@sal.lan>
Date: Sat, 25 Jun 2022 08:00:32 -0600
Message-ID: <87czew267z.fsf@meer.lwn.net>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain

Mauro Carvalho Chehab <mchehab@kernel.org> writes:

> Em Fri, 24 Jun 2022 16:57:56 -0600
> Jonathan Corbet <corbet@lwn.net> escreveu:

>> I went in with a crowbar and sledgehammer and replaced some of the list
>> searches with a dict lookup, resulting in about a 20% speedup in the
>> full htmldocs build with Sphinx 5.0.2. 
>
> Great to have a 20% speedup here! Yet, I would expect an even better
> performance improvement by replacing 700 million calls from linear search
> to dict, as it would change from O(n^2) to O(1) at the average case [1],
> but the speedup gain actually depends on the actual number of symbols we
> have defined.

I said "some" - this was a proof-of-concept hack.  The complexity of
their symbol lookup code is ... daunting ... and not something that gets
fixed in one place.  More research is required...

jon
