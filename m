Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC9462FA1
	for <ksummit@lists.linux.dev>; Thu, 22 Apr 2021 20:47:00 +0000 (UTC)
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 636C461409;
	Thu, 22 Apr 2021 20:46:59 +0000 (UTC)
Date: Thu, 22 Apr 2021 16:46:57 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Mauro Carvalho Chehab
 <mchehab+huawei@kernel.org>, James Bottomley
 <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev, Jiri
 Kosina <jikos@kernel.org>
Subject: Re: [MAINTAINER SUMMIT] Rethinking the acceptance policy for
 "trivial" patches
Message-ID: <20210422164657.2a8e5645@gandalf.local.home>
In-Reply-To: <20210422132831.51a711b9c08678a37dad85b5@linux-foundation.org>
References: <afc5664dc2b60f912dd97abfa818b3f7c4237b92.camel@HansenPartnership.com>
	<20210422123559.1dc647fb@coco.lan>
	<CADVatmM8Nrht+nWpP99WQSm8HtHimNkjmUFDjjRTmMjuB+401Q@mail.gmail.com>
	<20210422132831.51a711b9c08678a37dad85b5@linux-foundation.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 22 Apr 2021 13:28:31 -0700
Andrew Morton <akpm@linux-foundation.org> wrote:

> So, obviously, the way to get malicious stuff past me is to forge the
> sender's email address.  But hopefully the developer whose address was
> forged will be awake enough to say "hey I didn't write that" in
> response to the 2+ copies which I'll echo back at him/her.

And not yet senile where we are forgetting half the patches we write ;-)

-- Steve
