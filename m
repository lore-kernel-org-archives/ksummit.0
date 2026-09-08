Received: from relay.hostedemail.com (smtprelay0015.hostedemail.com [216.40.44.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A79434981
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 19:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788895693; cv=none; b=ZmJ445qL9BzUXPPDqTLXQK5V2VMwxL6Kio6lNBBtRj8a4lV40ykpZKcNHku8fk3xJS7XfDrxi6BPcrnL0bUj4I0tYPkOl6vuOotp1yFIzjaBUbSPQkFCTdBLkuEPs8N1APMun7ZL2d2q4wtVu0gNE0Yys9Mn5j5OgWqoTe9t+Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788895693; c=relaxed/simple;
	bh=hqOemFhJsuZ7nEuUCU0Ohp4LCejrRsWW3bPSyKAORMk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gL/RMbfgZ3GSULnek7QPuwDWzrx2ENisVitweLPjOiOUb9z2YJVXNN+5/4/pjOgL4BC+jTPNiFEfhgEytu1wt4thUE19AKBsT+Ce5QMCU0ue2X0DsYoCT3PjqVLjORDV69017ZuIXd+LBS62vDc4yW0EpaxMVTv/xLLPIsAFAro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.b=omkI4PvE; arc=none smtp.client-ip=216.40.44.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.b="omkI4PvE"
Received: from omf05.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay09.hostedemail.com (Postfix) with ESMTP id CA13180742;
	Tue,  8 Sep 2026 19:28:08 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf05.hostedemail.com (Postfix) with ESMTPA id D764E2000E;
	Tue,  8 Sep 2026 19:28:06 +0000 (UTC)
Date: Tue, 8 Sep 2026 15:29:21 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: Theodore Tso <tytso@mit.edu>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Greg KH <gregkh@linuxfoundation.org>,
 ksummit@lists.linux.dev, istoppa@nvidia.com, Kate Stewart
 <kstewart@linuxfoundation.org>, Gabriele Paoloni <gpaoloni@redhat.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
Message-ID: <20260908152921.3c90bdfa@gandalf.local.home>
In-Reply-To: <CAH2bzCSLiyJbJD4dUiCRE192A44Qw9B01vn-oA_6=foi2j3iuA@mail.gmail.com>
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
	<2026090747-carless-trio-ae92@gregkh>
	<CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
	<ap-AmsGgDNFYLlw8@mit.edu>
	<CAH2bzCS8DzBqR_4ELtg__4x8dX0+SYihKK0LLy3-pJmu=pRnsg@mail.gmail.com>
	<aqARgWGWYG5kZW9g@mit.edu>
	<CAH2bzCSLiyJbJD4dUiCRE192A44Qw9B01vn-oA_6=foi2j3iuA@mail.gmail.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: D764E2000E
X-Stat-Signature: a595mbn3zggwyp8q7s4be8kjti61y1q9
X-Rspamd-Server: rspamout03
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18LNhF0HlpCfGTXeenYEsTnXcQfkmg3Rkw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=hqOemFhJsuZ7nEuUCU0Ohp4LCejrRsWW3bPSyKAORMk=; b=omkI4PvE3ax0Ccg1fKy0a5KUvepAepeWeRECC9EnAzLtxpKOIPSWcwDx2VKM36rTmPpTOinsKfpF1T6QU5KvRaLGN3qfCNisw9wDyAHqSPpQ0M6SVaK8SzNhWrLELKOXLCVd2vRzNiLpgVdkzcaVJirbiQS6xNcAsgqH/e5VA64=
X-HE-Tag: 1788895686-220700
X-HE-Meta: U2FsdGVkX18HQAAQM5E2dTIhT+QIzpl10ab17Cc/9L3JP0DR2Q7eCbFqInmkyESs+e7MCE40vxL19/2XvW5+g5GH/iPJChvRThHnUFdMLZwNumiDFd3FqM6TfbUh3MjfJqMorz6SOvEevsynkz1SFfmdqdqnH5xD3BtX60AQ4aflEWsdt0qOR88dT2w1o43GWcdeDLJb4sBArcqr2ZwcXPKFhn2IBDTEXYlOsxop3FogsGz7F82O1YWnQRirnPnSn/hfHZGdQkvBkmHvn9d3voEuEwDkdscrCLNfLowJS9sUaOvTKISXYHtdJWh4MruwtMsZdZWxoEMRpUuFJqLbIYOqZsVLA02LbjOgtgGE3zOy7CUmyouvSxMU2h2MaUNm/nVjwui69Sf1w9K4TVDQXw==


[ Adding a couple of people working with ELISA ]

Bringing back my memory of working at Lockheed Martin in the 1990s on
helping it achieve level 5 CMMI rating[1] ...

On Tue, 8 Sep 2026 17:32:40 +0300
"igor.stoppa@gmail.com" <igor.stoppa@gmail.com> wrote:

> On Tue, 8 Sept 2026 at 16:56, Theodore Tso <tytso@mit.edu> wrote:
>=20
> > If the certification requires restricting and slowing down what 99% of
> > the other Linux developers need to do, =20
>=20
> No. It doesn't. At least not in our case.
> I've replied also in the other mail to @Miguel Ojeda about it.
> The need is mostly about preserving certain properties of the "fences mec=
hanism"
> that we would be providing.

What my LM manager always told me, the best process is the one you don't
realize you are doing. That stuck with me. It's to make the process do
things that "make sense" (although ironically, the CMMI level 5 process was
definitely *not* that!).

For instance, my process is to look at patches in patchwork for tracing,
review them, ask for updates, iterate, and when I'm happy I apply them to
my test tree. I then run my full test suite on these patches and if it
passes, I then push them to my linux-next tree. When Linus opens up the
merge window, I write the change log explaining the changes, and send a
pull request to Linus.

The above is a process. If I document it and then always follow it, it can
be something that can be "certified" (if it passes the requirements). But
I'll be following that process regardless of if it is a certified process
or not.

Hence, a process that you don't realize is a process!

>=20
> What you describe is the "pure-process-based" approach that has been
> chosen by many.
> There, one tries to prove that something is safe, through evidence
> related to the
> development processes, because it's needed to be safe.
> Or else there is no product.

=46rom what I remember, certification requires documenting the process and
showing that you are following it. And have artifacts to prove it (git
commits, email trail, etc). Repeatability is crucial. Being able to create
tests may also be needed.

>=20
> What we do, instead, is to let the 99.9% of the kernel to be non
> safety qualified.
> But behind provable barriers. We qualify the barriers as a fraction of
> the code base.
> The barriers might use some simple kernel functionality.
> "Simple" as in "easy to evaluate its safety" e.g. like linked list manage=
ment.
> Mostly, stateles/lib level code.

I'm guessing that this will affect the core kernel the most (scheduler,
interrupt handling, memory management) which should be treated with a bit
more scrutiny than normal device drivers as if they go wrong, everything
goes wrong.

File systems have a similar requirement because if they go wrong, people
lose data, which is never good. Funny enough, I'm not sure if file systems
are part of the safety portion, as file systems are mostly used for logging
in safety environments, but may not be part of the safety path.

>=20
> So the real concern, there, would be that in case the fences get
> merged, their qualifiability
> should be preserved.

What you should strive to achieve is a way to make it easy for Linux kernel
developers to follow the process you need. If it makes sense to follow and
not a bunch of bureaucratic BS, you may have people following it.
Especially if it helps make their code better.

>=20
> Most of your objections seem to be inferred based on others' previous att=
empts,
> but they do not actually apply to what I've described.
>=20
> In fact, we truly do want the kernel to stick to its present process,
> because we can
> rebase easily on it, since we are not tied to qualification of
> extensive portions of it.
>=20
> The idea is that once a core safety framework is present, then whoever
> wants to use a
> specific driver can choose to go the extra mile and make it compliant
> with the framework.
>=20
> Fully voluntary opt-in.
>=20
> Or if they do not care about its safety, they can still use it, just
> not as a safe component.
> So it would be really on a case-by-case basis.
>=20
> And for those who do not care about safety at all, even the core
> framework can be fully compiled off.

It sounds like you want to do what I mentioned above. To have a process that
kernel developers can follow that's not too different than what they do
today, but just in a way that it helps satisfy your requirements.

-- Steve

[1] https://investors.lockheedmartin.com/news-releases/news-release-details=
/lockheed-martin-achieves-record-fourth-cmmi-level-5-rating
