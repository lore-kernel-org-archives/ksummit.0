Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94BC4377015
	for <ksummit@lists.linux.dev>; Thu,  6 Aug 2026 15:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786031018; cv=none; b=lEyRz31XevIJ6E+tepiaflQYqP/C7kR6BlIXkxGH3Io89xtCCzgu8dy2nGdxsg1YaR5zM2R8jr1558NT5Myqrbf0LaQZhWy8ghweJigBHRrWhKsmSTSVMua5095rKoGzowo3OWOHUwjqaSq0AZVQx5wasXgn5pODrwS+Fys1EZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786031018; c=relaxed/simple;
	bh=6vgchO9NzZPZOaeF4J0DPAxzpUDWgttWiQ5ecMdpO8g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uhaNGHThwPHcKA9dF3vVVuiuFHhXjHdpeq53a1TlOSAFpG0wHeszian3OMJGhcaMVaz5iPrKkow1K1onbDuAwIj0ow6M06sVZ+3L4qdVYuXKeMIhy2xL91y0U7d2PSdm/39R+vWHaT6Ng6lNXz7TsR6x6Hy8ClneUoE17zJAyxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=qPfLMpJY; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="qPfLMpJY"
Received: from macsyma.thunk.org (pool-173-48-113-153.bstnma.fios.verizon.net [173.48.113.153])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 676FhXsV031180
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 6 Aug 2026 11:43:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1786031015; bh=nCcVbuXRaZbgB5u3nSPp8ckXwZnBWdhpqfbFXkKOwTk=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=qPfLMpJYbS/paarnsXCVaGNCE6obJzv5tO+hKyAXPg+BGnZfFKN3KfZB9PTmOD3eV
	 zf8eGPHBhWpPOefHQvtm+/F+9k1enmzIw7WQzFGzW34RLEYBHeJD9VlSrden4okjrA
	 Xn7B94v+gWon8d0MxLRyBp+VKnlDg582dDFg2GVL0tScWHx6pXMLUxHZwbf8REIqax
	 3TIfNgVs8O1hx2zb2DAjtfXzg7FH+NZtp+I8ID048NmPaua03KjDug1XLD9IQS9ySN
	 Ak+nEuHH+v+6EyJTOwLCiHhRueA1PUGRYG0suy94VPq6yH6QPlTvo7hq8u7wENvxQy
	 MDTarovf/QpXA==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 28DD3DC5904; Thu,  6 Aug 2026 11:42:33 -0400 (EDT)
Date: Thu, 6 Aug 2026 11:42:33 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: Jonathan Corbet <corbet@lwn.net>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
Message-ID: <anSpoxZ9SUBvFOZj@mit.edu>
References: <87y0ekm9nw.fsf@trenco.lwn.net>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87y0ekm9nw.fsf@trenco.lwn.net>

On Wed, Aug 05, 2026 at 05:26:11PM -0500, Jonathan Corbet wrote:
> Do we need some sort of more organized onboarding structure and, if so,
> are we able to create and sustain it?
> 
> At a minimum, one could imagine a bot that notices a patch posted by
> somebody who has not been seen before and responds with a "Welcome!
> Here's how we do things here" email.

I wonder if we could make the bot more sophisticated than just sending
a welcome message.  If the patch is white-space damaged, or doesn't
apply against upstream (or if there are indications that it was
applied against an LTS branch without an explicit LTS tag or something
indicating that it is a backport), one could imagine having the bot
sending a newer contributor a more specific set of constructive
criticisms.

Some, of this could, perhaps be something that we could add to
Sashiko, with an eye towards giving a more friendly message.  Just
today I had to let a new submitter know that they had sent a
white-space damaged patch, and given they were using a gmail.com
e-mail address, it could be possible to send a more useful message.
(Since I was in a hurry, I just pointed them at the Submitting Patches
document, which is rather long.  :-)

					- Ted
