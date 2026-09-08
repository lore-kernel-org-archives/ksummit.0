Received: from relay.hostedemail.com (smtprelay0011.hostedemail.com [216.40.44.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FA84AF9F4
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 17:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788888877; cv=none; b=cBdIA095Ims0AnJgSh6X1p6QjtdmTv75vn/nDuxFdwZ1NuZpMxOJz9/z0PRDeH9fe/Sib+iQzN7bAf8HH1M5Ku5/d15zWi9T+i/qzO7brFaYKYe/zKxX7WXI4U7CELzWq3A12xgOjHPIdZtcvuAGHMqBH/WtrheHSAaoes+kO5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788888877; c=relaxed/simple;
	bh=MYq6KPCJJOPd48JciFG0zmKj8b4PtHMA5E9WEUfZLb8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sgbIc9YUeZbWbLc81YXPZk/d0Mvyl9Y5uoi7rzsJHicd+uopoxMIGa1fpngQCY5kiG9q1ZVsuU7XiZ0zuE5LxAADBWNPxG3AY+bvuYyLabpSqdkA+/wJsmjx1z80QyQPIeyzQCMJSHuEtYv9yLLFe2u5J6qrJyrODbuuBKsvULk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.b=lX6ReTP8; arc=none smtp.client-ip=216.40.44.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.b="lX6ReTP8"
Received: from omf16.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay02.hostedemail.com (Postfix) with ESMTP id D5000120749;
	Tue,  8 Sep 2026 17:34:32 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf16.hostedemail.com (Postfix) with ESMTPA id 16A632000E;
	Tue,  8 Sep 2026 17:34:31 +0000 (UTC)
Date: Tue, 8 Sep 2026 13:35:45 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, Greg KH
 <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev, istoppa@nvidia.com
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
Message-ID: <20260908133545.05cbbd74@gandalf.local.home>
In-Reply-To: <CAH2bzCRuoa9BPWr2wvHGe6XVU5gu_Z2kC8h4DZm4Ub+PiVfuNA@mail.gmail.com>
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh>
 <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <2026090810-yen-tablet-8843@gregkh>
 <CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>
 <132d2a682ce15be4d4f1d8586596dd874195c8c8.camel@HansenPartnership.com>
 <CAH2bzCT_iTLE59=QOcJXUG-mQ_ONDLc_iEbpnAL6-VY_MfTYKg@mail.gmail.com>
 <20260908114024.6165c1db@gandalf.local.home>
 <CAH2bzCRuoa9BPWr2wvHGe6XVU5gu_Z2kC8h4DZm4Ub+PiVfuNA@mail.gmail.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Stat-Signature: fyeqo7ne5ge34niyq489fbtc1qjb3uu9
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 16A632000E
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18xqsNCD78nfLIf0/Tqr3nnPBoGyil2P8A=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=ztdk40UXgUzmMT7W6r5GmI6JgRSZPhMwCDE6kRoClW4=; b=lX6ReTP8kmmw1aqHMW7bn8k3NjmxwRIbUQmsMg8kAWma2+j2dHi1UrOhQvaJuOq8XMQttJDnzOjXQbu2s6z+/ov+W2BqGmPy6hBuwTj29odo12uRXJjjQ38OLYt8XJ6jm1r0BmiknDGl+9Z+NfpIhJ4WbzqXm8XzAKZ8e4iaLVs=
X-HE-Tag: 1788888871-115315
X-HE-Meta: U2FsdGVkX1/g7PhOtGbCwS5/+0uIuCXmfr6V5Y1mNgVtPAJbT6Az6eWZC/fEnh7I/CHZkQP92zqWVtH0q3tn1usM40i0uFTb4Zgb3/UuQilWS2MwrgC5PjdoqsgumInczK7iPLak+G9O7Wt3E6NgLwk53Serxx0FFrs/ZRNII2NBhzZx0uuZFU0246aKSwwcysV0FdFW3/VWeF2GoyvLNjfA3GdZ314fUXF1TCSS+Ti0IXFz1+z3HIJb7JQ/S9tGErb2J2SGwwzzrCMeW+8v+kXNAMu8Mhck3QVAuMFDa6HjJNNz92maDqyec+ijHkrn3A7jplIl0kjFxk9pFpEUrW6ZxSfo4iu05FmieOk5bTe8WPvHtnDkThx4RHdT4e547mRBrjym1Bhwj8UoUYzbBA==

On Tue, 8 Sep 2026 19:09:09 +0300
"igor.stoppa@gmail.com" <igor.stoppa@gmail.com> wrote:

> On Tue, 8 Sept 2026 at 18:39, Steven Rostedt <rostedt@goodmis.org> wrote:
> 
> > Perhaps if you do your development on LKML with something in the subject
> > showing that it is for your fork (like we used "[RT PATCH]" to
> > differentiate our work from normal kernel), but it could elicit those that
> > find your work interesting, and then you may get the discussion you are
> > looking for.  
> 
> That's very good advice, thanks.
> It seemed a bit intrusive to spam everyone with it, but if that's how
> this sort of thing
> gets discussed, sure, why not.
> 

Just don't Cc the maintainers of the code you modify, as they may think
it's for inclusion. Cc'ing LKML is one thing, as the only ones that read it
are those that are curious about what is happening around the kernel. If it
has some marking in the subject that denotes the patch is for a fork of the
kernel (that you would be happy to be included one day) it should be fine.

-- Steve
