Received: from fout-a2-smtp.messagingengine.com (fout-a2-smtp.messagingengine.com [103.168.172.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEBC3290A6
	for <ksummit@lists.linux.dev>; Thu,  6 Aug 2026 15:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.145
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786031904; cv=none; b=YrqQq67KxhZI5lC5od3r3mmrrzPHdy9D9t5ozlb83rXHJ1jYmcHXTrGdabjIHEpuWbUZqEYnJ0eyQVmFlMkkPqMtddmAH9jYjmJyAIBkRsQPpyAfCOkYEbtAWNB/+LEQJI8aOQsCHewfyZdM1fMNH9KXEUCxYs9mpnSxePDOvhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786031904; c=relaxed/simple;
	bh=HxK62bttKnh717d9pCUO469swJdB3uTh4g1ac3V7tv4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hMHRNktP5rqWlgMvj66q1gY/P5/SYaAK1pLd5gqV8Psox6sUcWKDQehMfKIHvv7mGKnaLmvHzvWfydieH5N2pT1ycZ6GjZKrqPYkPoyepajimRpexa2EwQgEe3PyxLZaF4okc0coiz+HyxPtM8wx+0a2OzZsQz/l92C8YG1qkfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kroah.com; spf=pass smtp.mailfrom=kroah.com; dkim=pass (2048-bit key) header.d=kroah.com header.i=@kroah.com header.b=HniOCHEO; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=MVhazk02; arc=none smtp.client-ip=103.168.172.145
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kroah.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kroah.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kroah.com header.i=@kroah.com header.b="HniOCHEO";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="MVhazk02"
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
	by mailfout.phl.internal (Postfix) with ESMTP id 40AB0EC01AF;
	Thu,  6 Aug 2026 11:58:12 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-09.internal (MEProxy); Thu, 06 Aug 2026 11:58:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1786031892; x=1786118292; bh=OmV0VblwZ3
	FlZQ8DgM0owy1te6r8pShRf8N032SQ+wY=; b=HniOCHEOxq7QhMZa4YFE8aFPkn
	EoL5irRBxhwShc3I+bmXlt1uG56Y7Q5y7zoAdEku0WFBhfqZTDCv6nvUGMAN5USr
	hmGiOez+uaPg1e+C46x3OqCBQiyMOrZ6LE36jnie3YSN7EAVwcbce6/6zlAjqTuC
	fOqeqVYFYTB3tJuorocB+H/kf53Evv8kS379geZDinVgJKqe+fBT4yzonztBpS33
	5942dQCcdFBRcffxNhDGWd24k48XeQNcUfrUDQdHywIH/4AOWz5zPNMj+Qu3L40x
	u1fMjwAkZ08DhLRKpAxExIFWracMuyliSO5P+WA8SRaKsAW626cy4EIgOjgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1786031892; x=1786118292; bh=OmV0VblwZ3FlZQ8DgM0owy1te6r8pShRf8N
	032SQ+wY=; b=MVhazk02i2Q+606fhx4f1vr+Yk/YRp/VbwixQlC7x6cUawdv3+c
	sWEeMwN2X7bR0SaxBjgLtx2dyoLawlk8FLqkCi+AgIxDpQZAZzi4BrT6Ch6IEEek
	TDzWjI3FmIAGcGXScoiMjZuGfPPoWicutooyPO1gdEN71qAYfGusbg9ZnUXYHTFo
	YzSbFw+/oCF0H8tcQmnH970BgSlpaaWA+9/2GSzneaGVqd4xqHYj9a8w/h4rSXjx
	zDJizx1t7aVjCxQcIusXh0B2YXoSqO4LIhle5bBSCdaU6RoEGh/QulFJQC+1jAKZ
	+x7fjB9+7csQT6fZVg+T1l6WozhNivQkiRA==
X-ME-Sender: <xms:FK90apHGWz7__K4L34_pW4bfskpupCWDlQBZnFRnrAqMGm60z4zxoA>
    <xme:FK90anpBE7Gz6q04K4M032jcapMQbe0bhKROl8-HiuErtogsYP44RiPkOKmOAdhgF
    CbYKPB93gzHrfyJjJFbJbM3xheQwPA2MRrVV4B02-WxbBvbSQ>
X-ME-Received: <xmr:FK90aiZM9ECBg1K7Qu94XEIKdc37a38gzea87fTiv05qiSKNONqdTSlUCoaX-RIphegzkWhaf7mS50kgwyjICw5wSrI7_Y5doRa1erPr7wM>
X-ME-Proxy-Cause: dmFkZTFQEpYd5LZzb5rkIR6HuANsMVZRiYnfRu2qhQibVoo8Xylninvi9UrXsA2ebIn30B
    DPbX1o8LDErqm9KgmQef0sv/QTbIOUsF5wluLwx0jOB9egJZS7K2ss16H9GLJKfmQUA8cU
    CZehwoD5b47H8R04Tkk43cn3+9vnm71e+Iu597H+zsd3M9N3sJtKMi/z6Q8/dZQqUKQTva
    gjkwOMhiqySAyrARrjCt8hBSEJw56bRwHeWrfaPaH8e5IIfCnFsCnVZ7k+oek/ZeKiZAi6
    dF+inucbP/MjWoen7gc+fUpNON3HTCxn1Ms1b99XMydKMf7SVlqjJsBW4rTBZg4BS14HRp
    w0wdIBsxF9F9dPmAN05RQE5CW1nUDqWj/GRy7JQ9zKGxuFnLuxgL4TbzLGy+3cXKRJjNTz
    TJ0xIifQ5hG2OINeMZ1JnmXpwKO1CXn6ID4y3IQaDrgdqpAiGBY7JmHXWeGPsQATAVg9OP
    nH88c6bxbw1f4F2CR3I6GkmNvSBLTGYc8YrfSy72o73UXWqb7vRbRBNTXDrCPSgLzh2ev3
    WOcZ1zv40Z84wR5Emtcuta1HJJQGPGt3MQo4stGo+koJGhIx5YdqTjP3A8MkghPs/BnToB
    BcLJJss3B5SJH1tau+Hu2SmQwPB/rkkcGE9apiH3CQ32t+AeWLVmSzLzp3hQ
X-ME-Proxy: <xmx:FK90agWvpto1K33TZt5YxbAu0H24mYbmjZSg5Niwv3qwCWKDgZGeQQ>
    <xmx:FK90ar9525bATsckCd8MoxtTnk-33j4syKbA3neS0JRvXCo3yC0U3w>
    <xmx:FK90ap90tkcoDCUAhsUDOAd4Q9x6Er1gN7kSg90zJ7NnlrFG-p8RRg>
    <xmx:FK90arRdTsV5Eo251OOTbp0-cfSZpxqoY_tuw_cPkQ6GdkXdvsrbmQ>
    <xmx:FK90aj_p8aqr5zOkVT4zHSDL-ibsi8MnxgYANM8Osu_wJr_XeCiznK4O>
Feedback-ID: i787e41f1:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 6 Aug 2026 11:58:11 -0400 (EDT)
Date: Thu, 6 Aug 2026 17:57:54 +0200
From: Greg KH <greg@kroah.com>
To: Theodore Tso <tytso@mit.edu>
Cc: Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
Message-ID: <2026080651-bony-hertz-bfb6@gregkh>
References: <87y0ekm9nw.fsf@trenco.lwn.net>
 <anSpoxZ9SUBvFOZj@mit.edu>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <anSpoxZ9SUBvFOZj@mit.edu>

On Thu, Aug 06, 2026 at 11:42:33AM -0400, Theodore Tso wrote:
> On Wed, Aug 05, 2026 at 05:26:11PM -0500, Jonathan Corbet wrote:
> > Do we need some sort of more organized onboarding structure and, if so,
> > are we able to create and sustain it?
> > 
> > At a minimum, one could imagine a bot that notices a patch posted by
> > somebody who has not been seen before and responds with a "Welcome!
> > Here's how we do things here" email.
> 
> I wonder if we could make the bot more sophisticated than just sending
> a welcome message.  If the patch is white-space damaged, or doesn't
> apply against upstream (or if there are indications that it was
> applied against an LTS branch without an explicit LTS tag or something
> indicating that it is a backport), one could imagine having the bot
> sending a newer contributor a more specific set of constructive
> criticisms.
> 
> Some, of this could, perhaps be something that we could add to
> Sashiko, with an eye towards giving a more friendly message.  Just
> today I had to let a new submitter know that they had sent a
> white-space damaged patch, and given they were using a gmail.com
> e-mail address, it could be possible to send a more useful message.
> (Since I was in a hurry, I just pointed them at the Submitting Patches
> document, which is rather long.  :-)

I have a much-used "bot" that I use for the "common" problems with
patches sent to my subsystems.  Here's the raw text below if others want
to cut/paste from it and adapt it for their subsystems.

----------------------


Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch breaks the build.

- Your patch contains warnings and/or errors noticed by the
  scripts/checkpatch.pl tool.

- Your patch is malformed (tabs converted to spaces, linewrapped, etc.)
  and can not be applied.  Please read the file,
  Documentation/process/email-clients.rst in order to fix this.

- Your patch was attached, please place it inline so that it can be
  applied directly from the email message itself.

- Your patch does not have a Signed-off-by: line.  Please read the
  kernel file, Documentation/process/submitting-patches.rst and resend
  it after adding that line.  Note, the line needs to be in the body of
  the email, before the patch, not at the bottom of the patch or in the
  email signature.

- Your patch was sent privately to Greg.  Kernel development is done in
  public, please always cc: a public mailing list with a patch
  submission.  Using the tool, scripts/get_maintainer.pl on the patch
  will tell you what mailing list to cc.

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

- Your patch did not apply to any known trees that Greg is in control
  of.  Possibly this is because you made it against Linus's tree, not
  the linux-next tree, which is where all of the development for the
  next version of the kernel is at.  Please refresh your patch against
  the linux-next tree, or even better yet, the development tree
  specified in the MAINTAINERS file for the subsystem you are submitting
  a patch for, and resend it.

- You sent multiple patches, yet no indication of which ones should be
  applied in which order.  Greg could just guess, but if you are
  receiving this email, he guessed wrong and the patches didn't apply.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/process/submitting-patches.rst for a
  description of how to do this so that Greg has a chance to apply these
  correctly.

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/process/submitting-patches.rst for what is needed in
  order to properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/process/submitting-patches.rst for what a proper
  Subject: line should look like.

- It looks like you did not use your "real" name for the patch on either
  the Signed-off-by: line, or the From: line (both of which have to
  match).  Please read the kernel file,
  Documentation/process/submitting-patches.rst for how to do this
  correctly.

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/process/submitting-patches.rst for what
  needs to be done here to properly describe this.

- You sent a patch that has been sent multiple times in the past few
  days, and is identical to ones that has been recently rejected.
  Please always look at the mailing list traffic to determine if you are
  duplicating other people's work.

- You have marked a patch with a "Fixes:" tag for a commit that is in an
  older released kernel, yet you do not have a cc: stable line in the
  signed-off-by area at all, which means that the patch will not be
  applied to any older kernel releases.  To properly fix this, please
  follow the documented rules in the
  Documentation/process/stable-kernel-rules.rst file for how to resolve
  this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
