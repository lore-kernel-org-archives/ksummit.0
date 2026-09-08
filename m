Received: from relay.hostedemail.com (smtprelay0016.hostedemail.com [216.40.44.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31065632BD
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 15:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788881969; cv=none; b=VxEiNbp80mVtXnSK95q8rleUpjEc0Lxo9B//yuVLukn9I/KhtbFwdAE+Y/zPdzSncVz/0z82TdbmsvMPuavqG4UVaN6K+yCAqZ12KrDwF1ow660snlgvyhy3xbDRAvEnIfq+RYftq3gLA3F379tAlcdH0DT+bh1ulvIxcyBRn6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788881969; c=relaxed/simple;
	bh=5Tfy+cCl81GUQCv+VxjTtg4273qGz3vBZ4S0wcx+wCY=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uv2cUdfzEAaE5uhHfvp3X329GgT/xHyKTxeDDLEjUswRUk4600r8lzJQHLG8jTa6uX/i5z0ZXizV20tyAiNsI6H1N4keIsek0BucvO2DAsf1jW2lDhag4WeowkTIxcFOk4sD0swH/Prjf+Yxv0R/HxyshV0CwsRjX4lAu+yjaxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.b=3+tW6rD0; arc=none smtp.client-ip=216.40.44.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.b="3+tW6rD0"
Received: from omf05.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay10.hostedemail.com (Postfix) with ESMTP id 46F65C06B8;
	Tue,  8 Sep 2026 15:39:13 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf05.hostedemail.com (Postfix) with ESMTPA id 83FBA20010;
	Tue,  8 Sep 2026 15:39:10 +0000 (UTC)
Date: Tue, 8 Sep 2026 11:40:24 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, Greg KH
 <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev, istoppa@nvidia.com
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
Message-ID: <20260908114024.6165c1db@gandalf.local.home>
In-Reply-To: <CAH2bzCT_iTLE59=QOcJXUG-mQ_ONDLc_iEbpnAL6-VY_MfTYKg@mail.gmail.com>
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
	<2026090747-carless-trio-ae92@gregkh>
	<CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
	<2026090810-yen-tablet-8843@gregkh>
	<CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>
	<132d2a682ce15be4d4f1d8586596dd874195c8c8.camel@HansenPartnership.com>
	<CAH2bzCT_iTLE59=QOcJXUG-mQ_ONDLc_iEbpnAL6-VY_MfTYKg@mail.gmail.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Stat-Signature: nbb7wmg451wc3ztzgzpqqu1g5p9ewhs5
X-Rspamd-Server: rspamout06
X-Rspamd-Queue-Id: 83FBA20010
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX19p1eDGkWUijHyc3XnQN2jA6SBua/+WIf8=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=NlXzOwGdP9e/qumTOg/IN/pMzni27usxGSA21z6oGLc=; b=3+tW6rD0C8dVwRwsn1Aw9740tikRtcWHsJK0cdsAUdKaPUI6EgpYNoK2VBB1CX8fSnGPz5LddPdW8oHIEKUNmy3csUWKtqYkdfj5NlA6c6fvp+mgZLFn7CNN/rg0m0avCJ6zI9HuYR7XauHxqt/Mf+txdKEEa/NrDP2JWOB0Q/M=
X-HE-Tag: 1788881950-166547
X-HE-Meta: U2FsdGVkX1/MUXg8MbCZvzmk0NrRU+cxh/tg8yQN897slAvp8RI4nCEnxeE/J9DtjLDTU1aSqFj+qeXO6tUPc6f8+G+Lkc+qKWI4QQBQK2pM/FqebdsCV1BqeoHlloT7WdJX4beUX9/pmN30PrBGWK0Ajt3ealRSC//oSdMeNzog/KWTFfT2Xj6IFsgp4c+6zActOlPksTg+o9UTs4t0XDF+NLibwxKnTTV8Gv29Obn35n1IngPQC2s+B2RRg0c1jl0StN/b/OqwnxL4KgX8S7/kMPKt4ODJC3cEfLe1Ofj8siefo592+pKGeI3wcKDbatmfeoLuOa9PbW1dqntoWtFjbkQZ2NgDcRz1suXxEnVC6YXLg2RUe8TQKO4/q0OmbnfsZCdR8lT+KBM8hLg+KA==

On Tue, 8 Sep 2026 16:03:03 +0300
"igor.stoppa@gmail.com" <igor.stoppa@gmail.com> wrote:

> On Tue, 8 Sept 2026 at 15:41, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> 
> > You seem to think some people in upstream magically know the correct
> > direction:  
> 
> I was looking for any outstanding known problem, not necessarily
> related to safety,
> that upstream maintainers might have been already aware of, or interested about.
> To see if it could have been a good match for the mechanisms we have developed.
> 
> The idea has backfired, so we'll go down the usual route.
> 

Note, the PREEMPT_RT project made a deliberate point to do all work through
LKML, even though we were basically a fork of the kernel. Several
developers asked us to create our own mailing list for which we refused.
The reason was simple. We wanted our work to be seen by everybody as people
could see the rationale behind decisions we made. It also brought new
people to the project when they saw we were working on something that they
thought could benefit them.

Perhaps if you do your development on LKML with something in the subject
showing that it is for your fork (like we used "[RT PATCH]" to
differentiate our work from normal kernel), but it could elicit those that
find your work interesting, and then you may get the discussion you are
looking for.

-- Steve
