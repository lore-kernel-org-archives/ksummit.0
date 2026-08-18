Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1796247884B
	for <ksummit@lists.linux.dev>; Tue, 18 Aug 2026 14:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787061819; cv=none; b=CzNrge1JNQRmRePd5kOUkEJhCROxrdZ19xHlH9OkVf89kuQ3HmSy6vQNdyhMcg8WWoziCsKedeeULxWU8bSwH+xdITUoXe8aoMBNnmTd6Pt+5pkRbuupFK68qKUuznucX2NokaqmOtopNbRrsxMTo/yRJymcTBmoKRu4Z691FWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787061819; c=relaxed/simple;
	bh=ibP4COQWPkURdlLlI+bF6F4OSFvrqXcFEgm6RkUPTF4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=plunXG8drvNTLd5i4/lYXgUmApCUqvyfKKnx97z4zmTo+5nsVsdLbgj5tMQR06KA9LR6Ycjd4aqlDJQBol/27ap2Oc5WlgxL2puWFjUead+8NOXcnt+3UYglrnZ4s80LTyQdVW5BQzndWLw+KfrwpLHub+3sYDAzWii0b+Opw/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=aZRRZxib; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="aZRRZxib"
Received: from macsyma.thunk.org (pool-173-48-113-153.bstnma.fios.verizon.net [173.48.113.153])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 67IE31wT029279
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 18 Aug 2026 10:03:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1787061794; bh=41tm8X9zI8H39IpSGdryGK66X38rfx1HQO6JvgReAJ4=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=aZRRZxibMf4XBapbNSSXfHl7GKsenpxEwFChce2EShOYLdKhxYafdmqgCtBTvZ0D8
	 UhAgysvrFC1EbcpXZI+bdOKtMPMMzjC4d+syzbh6+qxa4yZXu7b6RJPb3ax4DNo54t
	 4rVdeOyo4GFVigoTGb9qpK/L2qnYBuzdX0NjaNrPGOFgE0XtS1jWY1hFBf6mpQver1
	 hrzQC/eFdzuJbY/aDM3UguosoJ7xTBy5CTPiEINuofgTJ/2Cw0cgy26cFEtsH8sueW
	 33uYIJhue99BBEpwbVZJKkv9UJTX/OB8ieSQhYELsaDyRc6GQH3zW2pBFVXSxRETff
	 igMxaHeJEH4sQ==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id C8EC5F770BC; Tue, 18 Aug 2026 10:02:00 -0400 (EDT)
Date: Tue, 18 Aug 2026 10:02:00 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: "Liam R. Howlett" <liam@infradead.org>
Cc: Steven Rostedt <rostedt@goodmis.org>,
        "Lorenzo Stoakes (ARM)" <ljs@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        James Bottomley <James.Bottomley@hansenpartnership.com>,
        ksummit@lists.linux.dev, "David Hildenbrand (Arm)" <david@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Dave Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <aoRlKyICddc7U353@mit.edu>
References: <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anfUgiByUVffXlrQ@mit.edu>
 <87y0efi08u.fsf@trenco.lwn.net>
 <20260809170918.218792b2@gandalf.local.home>
 <anmHaRzbnY7rtLX8@gremlin>
 <20260810092003.5fda8e06@gandalf.local.home>
 <1BD1C7E7-CCA5-4BBB-94D4-83A7706E2579@infradead.org>
 <anppSi8oQvvODOI2@mit.edu>
 <od7zzwh6dqabzqyz6tlvd6n4uibcqvnhohikbbmjxwjjtpnjjw@xnkg7kwr2zz2>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <od7zzwh6dqabzqyz6tlvd6n4uibcqvnhohikbbmjxwjjtpnjjw@xnkg7kwr2zz2>

On Tue, Aug 18, 2026 at 09:09:22AM -0500, Liam R. Howlett wrote:
> 
> When succession is happening, it would be good to have the new person
> shadow the outgoing person.

That's a good idea, where it's possible.  Have you suggested this to
David and Andrew?  I know there are a lot of discussions about the
succession within the mm subsystem, and since it's (from an outsider's
perspective), it's a large and very healthy community, my personal
preference would be to let the mm subsystem work through this
succession, and then we can take learnings a year or so after the
succession is complete.

Cheers,

					- Ted
