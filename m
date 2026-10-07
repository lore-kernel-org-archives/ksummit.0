Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDB548C3E4
	for <ksummit@lists.linux.dev>; Wed,  7 Oct 2026 09:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791364996; cv=none; b=N1uaRQXVXUb6fQ54RxuMmUG7EjGKgZ1LssmRwyOkxnmqggxgPQPZcIioz0vuNb55/iATa9tFOExjsAA789PIayIkfvbS9IzA1b0Fa7PesaGWF5SN6SH7iZyeEZp5C/vtpnZGoI/lHjzWdwg6e1S3hyWdTIwkPw2feeGLx//WGcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791364996; c=relaxed/simple;
	bh=dFOzTKFa0bV4WbowFqS6l660xp8rL/RGTMs4ourA9IA=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=qrCr1qYBTLE9JVaTHqovuo1k0o1eujZTQTtYXzK7sGXyCH7lO8CqE9IlccvBjZi83km5tkm073GsnNEu7Dr2uvIzTaninD1UrfcMRJE1Ae1rMP6WnmBWrCpT0BVTybglq7QhwkTConEAgVuTq1eE8aECB78aIest1Mav7RHSYhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=gB/z0iAF; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="gB/z0iAF"
Received: from macsyma.thunk.org ([151.240.45.83])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 6979Lr4s025983
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 7 Oct 2026 05:21:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1791364916; bh=K0sbItuAcBBwl7PPJkuEAiRYt9+HrYqiVHRnnHw9dtU=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=gB/z0iAFhFVf7y+t2xzxxd1my0F08Nmfzsrh60inh9XhpL84YmYPuT64JksNSYrrf
	 FKUM9qMrdYwALe1YxjBDUXDGmCyY5tjctWFpveq3YKmRbnWoemA1Tw0GaG9aR122yP
	 YPLblloJ0S8tAQcSU6Vwndb3Ocwkw04b2g352ermB9j9zishKogCu7ux48SUtNL6fW
	 XzNZYLyAzbbMNmYN/OUjXnsHIkJeiH7Qs9g3EbaJWxndBaxqIPbu8awXtfrlQtxDKd
	 TcrvDIkZhqdQchxtIrN4CqjhGGkE2VcxjzEZPHDANsrCFwpua+Xmws6olZlpDBl+zt
	 ZyynQLM+tJupw==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 5167A1F58D9E; Wed,  7 Oct 2026 05:21:52 -0400 (EDT)
Date: Wed, 7 Oct 2026 05:21:52 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: ksummit@lists.linux.dev
Subject: Maintainers Summit agenda
Message-ID: <asYNdMy-fMNOAugp@mit.edu>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

My apologies for not sending this sooner.  Things have been a little
busy during Plumbers!  In the interests of transparency, here is the
planned agenda for the Maintainer Summit.

If you have strong opinions about any of our planned topics, feel free
to reply to this e-mail.  If you are in the LPC in Prague, and you
happen to see me or any one else on the attendee list, you can also
give us your opinions in person.

Cheers,

								- Ted


			 Maintainers Summit
		     Thursday, October 8th, 2026.

8:00  Hot breakfast and morning refreshments
9:00  Welcome and Agenda Bashing
9:30  LLM Code Review
10:00 LLM Code Generation
10:30 Break
11:00 Coping with the flood of new developers
11:30 Scaling our security process
12:00 Lunch
1:30  What are my pain points? (** See below)
2:00  Reacting to the pain points
2:30  Group Photograph

** What are my pain points?  Every attendee is asked to prepare (ahead
   of time) a brief, one-minute answer to the question: "What are my
   pain points and what is one concrete realistic change would make my
   life more pleasant" There shall be no interruptions or discussions
   during the initial statements.  We'll have time to react to
   people's pain points and suggested changes at the following
   session.

------------------

Attendee list:

Alexei Starovoitov
Arnd Bergmann
Christian Brauner
Dave Airlie
Greg KH
Jon Corbet
Linus Torvalds
Mark Brown
Miguel Ojeda
Rafael J. Wysocki
Theodore Ts'o
Konstantin Ryabitsev
Thomas Gleixner
Will Deacon
David Hildenbrand
Sasha Levin
Alice Ryhl
Christoph Hellwig
Jiri Kosina
Roman Gushchin
Eric Dumazet
Julia Lawall
Laurent Pinchart
Shuah Khan
Peter Zijlstra
Danilo Krummrich
Paolo Abeni
Eric Biggers
David Sterba
