Received: from relay.hostedemail.com (smtprelay0012.hostedemail.com [216.40.44.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B56B0224AF9
	for <ksummit@lists.linux.dev>; Sun,  9 Aug 2026 21:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786309761; cv=none; b=LPCpOksbhLYuAy9sweubxstlKt4FEqWlDK4XyUltTZLKf8fEWe6vZVa9d4jdCJrXhfY06Msr8rEYvhYERpfY8rsXwAf5UtdzFqjhTcZX7xPGZhn5sDesg2BoduQZp/DS1V1KYrbhsR7DY0qwe6afqTLTAhIBGvrpUE+KqLcxD4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786309761; c=relaxed/simple;
	bh=wn6C6Lxbtie4+/3qaR+qnuyNKjKerLnJ4WQhCJQhraI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=vCY4l/JIhb1KEzvOMkLA/WP2bGEozeX8/Zwy64+lHOXsWhpDuEv2DnYXzht/voesA8COpDaVvUrVgHf94cOMap5atL/VO0ruKKzFTdwm0JA16KxNMeVAXM4Ck4BjZQMcdCEwll1tewp7t1pCSQniJUC/kOzEWKL4d7r/mfh9NTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf10.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay03.hostedemail.com (Postfix) with ESMTP id 15A21A061B;
	Sun,  9 Aug 2026 21:09:12 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf10.hostedemail.com (Postfix) with ESMTPA id 5589932;
	Sun,  9 Aug 2026 21:09:10 +0000 (UTC)
Date: Sun, 9 Aug 2026 17:09:18 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jonathan Corbet <corbet@lwn.net>
Cc: Theodore Tso <tytso@mit.edu>, Linus Torvalds
 <torvalds@linux-foundation.org>, James Bottomley
 <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <20260809170918.218792b2@gandalf.local.home>
In-Reply-To: <87y0efi08u.fsf@trenco.lwn.net>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
	<20260806194153.6443a3ba@gandalf.local.home>
	<CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
	<anfUgiByUVffXlrQ@mit.edu>
	<87y0efi08u.fsf@trenco.lwn.net>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Stat-Signature: gsmauqtzgbhw84wu61yengerocqcwkk4
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 5589932
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1904ZTvSvv5/KT2F9kvT9ODh/+Rs4PzXsY=
X-HE-Tag: 1786309750-954126
X-HE-Meta: U2FsdGVkX1+S8TKUhfmqVZ4oKQIvvVR9AZqMZJRQ7tcRzkJB8WPO/yPZR9ghwZbuv1HTz2UIU9lsCjCAO69JYOl/JooHGtPOy2xzrvHZ0U5NhP6C0tsFziZ2LjbKYqiK/q9F99p6MHD6CUozS0Li2BJ6QEF+tJsqC1QrgU09rHG8RRejJXgpM63CNk596tjKF6pz8cJ8in8KSLVoyDeEvrlVC3MXCZdKwG5tfysa9QMDeZmODD7EoH5cjDGoGA7zFjSKvmeenP1rv8gDx8Zs9AQ3YmAy0SYmnO6n58Brh2lDbKg+spCu6gzQK1guIlRvB2pekZheXFZ3KTU04rxAi9JYxz74z93bV37gtpJp/+vQUkyyCT1HwGOe0D5aP0SAo5o9uF8P12OwiUljrsXJmoKD17svotKF

On Sun, 09 Aug 2026 13:04:33 -0600
Jonathan Corbet <corbet@lwn.net> wrote:

> We could perhaps do better, maybe with a rule that N% of the seats
> should be filled by first-time attendees.  But we do also have to be
> sure that the right people are in the room handle the topics under
> consideration, and that will inevitably include a number of old-timers
> who have been there before.

The thing is, we need people there that are responsible for the actions
decided at the conference. Getting new folks that do not have a stake in
the decisions is not going to be helpful. This is one reason the same
people are there all the time. They are usually the maintainers that may be
most affected by the decisions made.

For instance, last year the session about best practices with linux-next[1],
DRM was brought up as one of the subsystems that did a lot of rebases.
Without Dave Airlie there to explain why he does it the way he does, there
may have been decisions made that could have negatively impacted the DRM
subsytem.

What is the goal of Maintainers Summit? Is it to fix issues that we are
currently having with the process? If so, it is best to get the people
there that are having the issues and those that can help solve them. It
should not be a vanity affair where people can have bragging rights for
attending.

This should not hinder new people from being invited. As the kernel
changes, new people start to have more stake in the kernel. People like
Miguel and I would even argue for Lorenzo ;-)

-- Steve


[1] https://lwn.net/Articles/1050027/
