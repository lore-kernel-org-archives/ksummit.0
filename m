Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4205E47F2E1
	for <ksummit@lists.linux.dev>; Tue, 18 Aug 2026 16:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787071636; cv=none; b=md3d6A74M4qufsCivGla+KIUdWmX4PTz8Q3iOpmCuWF1OsNYbi7da+blaI6ZEkS6iNYmf1/Z6l+94vc67X2HO9FuW1ANl1Y+5fp7NcjN+5sDabL1L3S2wUYLD/+pZ1HFBzAFBZBMulbnPWrsdVN3l3OT60S+fXq7tEra/xYOzz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787071636; c=relaxed/simple;
	bh=KAEm6rWjeLPT+W8QTStW+bk3y3usuzNkLjqqhiX6zpk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QNurzi/QWC2scIlVHzncsoC8apkL1ENC31EKzImRCX6IITE/DJ+npWB+m4mcPrUPS3zzgxnyN314N0Te0h8a7i2Gj8pzPijni6NMoK9rqxfh9BLSRptBLDHoxV/BNJQZ15bSdiI55fNHCQQ949HPmi7RX3T1/7UNlvsOK+cr4Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=RgkBLvUI; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="RgkBLvUI"
Received: from macsyma.thunk.org (pool-173-48-113-153.bstnma.fios.verizon.net [173.48.113.153])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 67IGkruJ019788
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 18 Aug 2026 12:46:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1787071616; bh=X+iSUEnja8z3+V3CmBDVD3e/CPgDKiGSdij9q3BQ16I=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=RgkBLvUI+e/d7UN1YFlXGVR4zA1FqmUf07HAZ33Sl6daJDqIAmrMybN5ZHpL6Aaot
	 PMZEKoEn4mdaWARVJcfIJc9HsweiBN5iTo+vsyO59l569mE+Xb41hu4kU3B4zjqwcd
	 2kIoO3QKiPmmJ2p6AzKcDaO2j/99R5/rmLZVgwPAyV0jwkUpid71WFopZFy5GKvE2H
	 3VERR+VZvkDCY9qZ2K7AsT+mmb8TCpc3V/YcBt1msQuUvlO1cHSWbhaw/jC7uZoP5c
	 WG/Sg8m0e4KNoHlpxN/Wj7lHmbbMYB1/FE1somojDW+qBFO+VYYEeKaYcRqgP0eJtc
	 XgAp8lR9qolTw==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 9DDA1F7B6C5; Tue, 18 Aug 2026 12:45:52 -0400 (EDT)
Date: Tue, 18 Aug 2026 12:45:52 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
Cc: "Liam R. Howlett" <liam@infradead.org>,
        Steven Rostedt <rostedt@goodmis.org>, Jonathan Corbet <corbet@lwn.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        James Bottomley <James.Bottomley@hansenpartnership.com>,
        ksummit@lists.linux.dev, "David Hildenbrand (Arm)" <david@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Dave Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <aoSIANv2L18fV4RN@mit.edu>
References: <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anfUgiByUVffXlrQ@mit.edu>
 <87y0efi08u.fsf@trenco.lwn.net>
 <20260809170918.218792b2@gandalf.local.home>
 <anmHaRzbnY7rtLX8@gremlin>
 <20260810092003.5fda8e06@gandalf.local.home>
 <1BD1C7E7-CCA5-4BBB-94D4-83A7706E2579@infradead.org>
 <anppSi8oQvvODOI2@mit.edu>
 <aoRwK2L8CjtnhTK7@lucifer>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aoRwK2L8CjtnhTK7@lucifer>

On Tue, Aug 18, 2026 at 03:51:16PM -0500, Lorenzo Stoakes (ARM) wrote:
> TBF I did make concrete process suggestions myself here:
> 
> https://lore.kernel.org/all/anntucHhrzF_b4sy@lucifer/
> 
> And here (documentation):
> 
> https://lore.kernel.org/all/anntucHhrzF_b4sy@lucifer/

These are the same URL; cut and paste error?

> And they got ignored, so I'm not _entirely_ sure that's what you
> guys are after here :)

The above message was essentially a suggestion to (a) improve the
Maintainer Summit Call for Topics, and (b) document the full process,
with all of the details in the Documentation directory.  The first is
something that wasn't immediately actionable --- it's something to do
for next year, and the second is one that we could do eventually, but
to be honest, it didn't seem super urgent given that it's documented
in this e-mail thread, and many of us have other things with shorter
timelines (such as the merge window) that is keeping us busy.

I'm sorry that you feel ignored, but we all have tons and tons on our
things screaming for our attention.

Cheers,

						- Ted
