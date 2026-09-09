Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66DFC3DD87F
	for <ksummit@lists.linux.dev>; Wed,  9 Sep 2026 15:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788967369; cv=none; b=KbGKdIDb+5YyakIgRS2iMEGhbcCWgrv7UR11jI0NvhFcRmsu5kv5Qh99/ADEEVYXP895W48Oio5NoOW21L62JcaHGvUY9DFVUsDEodpyJrkmi/0GPGxBpDckwWArEJZOEVKnZx9HAu65rd7Xln4x81NrB5lifDDu87/NzRvRVls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788967369; c=relaxed/simple;
	bh=jEEYTEjdAo3d1SP2uOgoKlRd7X4ZKI9A4uVka1/Tpmg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WhhHBb+SnBID2Ta4hDcHwB5YUDfaYB3HK6YbMrFoGhwVzX3l1JpFEVy6BX1SOzA8wJDF9gSoi4IJ+lzdIuBgMoGmt4Hol5xGRD2nbmitJd9S/c3pNxvmlUu16Sv+jkOcrQMR5qsVGYvSe921QNY3H67ijgzDmmDaz4+Q8kQPh00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=NFSHV3pf; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="NFSHV3pf"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1788967366;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=jEEYTEjdAo3d1SP2uOgoKlRd7X4ZKI9A4uVka1/Tpmg=;
	b=NFSHV3pf7qb4Zzo5OvTbXIj94rSSMC1LFG0j+UMuwevYNilgYQRyg0oVM5diIOLlu3Aqbs
	4d5r++6Hx8QG4hNeOwJsahhg/Mc8AoD2WUtjeQddPceilUaPXEnBN+7X0muFT/nc9/mdsF
	9PNeW+oGkKMiAAr3AigWhzPt+zTTwyE=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-530-Osi3eKqmOwu395kEd17Mdg-1; Wed, 09 Sep 2026 11:22:44 -0400
X-MC-Unique: Osi3eKqmOwu395kEd17Mdg-1
X-Mimecast-MFC-AGG-ID: Osi3eKqmOwu395kEd17Mdg_1788967364
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-48589603501so3707010f8f.3
        for <ksummit@lists.linux.dev>; Wed, 09 Sep 2026 08:22:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788967363; x=1789572163;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :autocrypt:references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=jEEYTEjdAo3d1SP2uOgoKlRd7X4ZKI9A4uVka1/Tpmg=;
        b=DHPHBFaFMBkVAXdG9/vlLYPDCiMgE4XOJSB+W/u0ggipj1d5FQnl79WeYTvtrWZT95
         cCggBBrjDXN37ISlb2yLuvwmrc6fm752t3U8dfCHpCNsRS1MI01tvJ1dCuIch7vkw26q
         nn08y+XGwKxfgCf13j/kcVw0XX4+4C3E77+NS1XlVUSNuosEslEHNTTxiq8d3XVL+UB9
         Akfvxqtl3yRpPb9rnNYV+ZKtskDFrSayhIsVLnQtSJRodx749TaK8ZChlJdR/pGXqwjs
         NFNtUI0Mvx8IEVBiztex3rvZeTOF3a2RkK1B6C+4R3YDYJbvwOtOnLbY7CSSzyJsuBaw
         WJBA==
X-Forwarded-Encrypted: i=1; AKwUvBwdnMyL6wxagkC8ZdRkcA7NovucUa0S48aPJmBVXt4ARiLu7Nu+YNRvvCH03yQFyqud+9fX9hH9@lists.linux.dev
X-Gm-Message-State: AFuF++npOvWOP8BRqiBdHuN3gqYEiC76vlF+CenxwJc3OgMbX5qqZ4OL
	vHve8S/PtJD2lZikrUaeHNGl2TsWdUZQMxSj1ICgDabPHytzIkVyNGb+9d2v3Uuw9tAVZIM9ayK
	mTKy2Ap6kOR3bpF7gDEaAKjt4OEDmuV4NWHdy951eKdtGazifOsWdZa+O5dm7OAS0R20=
X-Gm-Gg: AYBFou1k3WWxFllOLNqoIPO8aaDQU9MeuInzU3H8T1pBP+7ojj9m9GVO8UWn3IrlxY1
	e+yt9T3NbDR8fm1zdTTZOFlwLIf/PWwBybl/0Yz8TF6Oq3XC3T2ZFlOZMI+KWRCHbcjuHQf7ac+
	meUfhn4rUJoKV+TGZs3qQzUxigU1/xVj+Tdq8fFkdyQctP+wwlF17AB5G+4956pHDY/mWcWzVfz
	lyJgbu+njVbZ/cWesHKmUP2w7z3RMqloXLZnoKDqXs2JYcl35cEn/ugnAI9uYvUhQ5rwgygwRal
	Ao66Aks1pWwnrqGcX3p/H8fW1RfQaOddGCOKJ8qhK+ZjjzA6ksZ2i+SCtCIbE0D0sdh2gn5c7qL
	bKg8ilSCQ+hOwg7beNWs8gnC7/619gw==
X-Received: by 2002:a05:600c:8706:b0:49d:191b:88be with SMTP id 5b1f17b1804b1-49d191b88e2mr141898215e9.0.1788967363485;
        Wed, 09 Sep 2026 08:22:43 -0700 (PDT)
X-Received: by 2002:a05:600c:8706:b0:49d:191b:88be with SMTP id 5b1f17b1804b1-49d191b88e2mr141897705e9.0.1788967362958;
        Wed, 09 Sep 2026 08:22:42 -0700 (PDT)
Received: from gmonaco-thinkpadt14gen3.rmtit.csb ([195.174.135.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49d00031c95sm461561115e9.11.2026.09.09.08.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 08:22:42 -0700 (PDT)
Message-ID: <9b3e9c8cbdfd657323467079d397792c1ac8959e.camel@redhat.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
From: Gabriele Monaco <gmonaco@redhat.com>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Theodore Tso <tytso@mit.edu>, 
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Greg KH
 <gregkh@linuxfoundation.org>, 	ksummit@lists.linux.dev, istoppa@nvidia.com,
 Kate Stewart	 <kstewart@linuxfoundation.org>, Gabriele Paoloni
 <gpaoloni@redhat.com>
Date: Wed, 09 Sep 2026 17:22:40 +0200
In-Reply-To: <CAH2bzCR_hwxVbH-rfUHzj1-70mU7SkRY=3OgHEe7om5kZ605sQ@mail.gmail.com>
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
	 <2026090747-carless-trio-ae92@gregkh>
	 <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
	 <ap-AmsGgDNFYLlw8@mit.edu>
	 <CAH2bzCS8DzBqR_4ELtg__4x8dX0+SYihKK0LLy3-pJmu=pRnsg@mail.gmail.com>
	 <aqARgWGWYG5kZW9g@mit.edu>
	 <CAH2bzCSLiyJbJD4dUiCRE192A44Qw9B01vn-oA_6=foi2j3iuA@mail.gmail.com>
	 <20260908152921.3c90bdfa@gandalf.local.home>
	 <CAH2bzCQYFDvUXdUwE-vS03=QSqO9TuYdN+=kdrYGhL+ttw=BOQ@mail.gmail.com>
	 <20260908191440.65efef15@gandalf.local.home>
	 <CAH2bzCR3_DJOuW+jfkH7tkx-j4KbPJHVx2k2Z6X=+vaS6rmqng@mail.gmail.com>
	 <7d1c7f9677b6c5e9abec4d1ebc7c83cbdaa3e1ad.camel@redhat.com>
	 <CAH2bzCR_hwxVbH-rfUHzj1-70mU7SkRY=3OgHEe7om5kZ605sQ@mail.gmail.com>
Autocrypt: addr=gmonaco@redhat.com; prefer-encrypt=mutual;
 keydata=mDMEZuK5YxYJKwYBBAHaRw8BAQdAmJ3dM9Sz6/Hodu33Qrf8QH2bNeNbOikqYtxWFLVm0
 1a0JEdhYnJpZWxlIE1vbmFjbyA8Z21vbmFjb0BrZXJuZWwub3JnPoiZBBMWCgBBFiEEysoR+AuB3R
 Zwp6j270psSVh4TfIFAmjKX2MCGwMFCQWjmoAFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgk
 Q70psSVh4TfIQuAD+JulczTN6l7oJjyroySU55Fbjdvo52xiYYlMjPG7dCTsBAMFI7dSL5zg98I+8
 cXY1J7kyNsY6/dcipqBM4RMaxXsOtCRHYWJyaWVsZSBNb25hY28gPGdtb25hY29AcmVkaGF0LmNvb
 T6InAQTFgoARAIbAwUJBaOagAULCQgHAgIiAgYVCgkICwIEFgIDAQIeBwIXgBYhBMrKEfgLgd0WcK
 eo9u9KbElYeE3yBQJoymCyAhkBAAoJEO9KbElYeE3yjX4BAJ/ETNnlHn8OjZPT77xGmal9kbT1bC1
 7DfrYVISWV2Y1AP9HdAMhWNAvtCtN2S1beYjNybuK6IzWYcFfeOV+OBWRDQ==
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: OOd3hcYFS9z5x9KV7hdGdflk_K8_KAhnWtW3NcGEkc0_1788967364
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2026-09-09 at 12:40 +0300, igor.stoppa@gmail.com wrote:
> On Wed, 9 Sept 2026 at 10:44, Gabriele Monaco <gmonaco@redhat.com> wrote:
> >=20
> > On Wed, 2026-09-09 at 02:48 +0300, igor.stoppa@gmail.com=C2=A0wrote:
> [...]
>=20
> > > So, we intentionally limit ourselves to having, as dependency of our
> > > custom fences, only functions that are simple enough that we can hone=
stly
> > > and
> > > credibly claim to have reviewed adequately.
> >=20
> > About this last point you make, RV was originally designed with this
> > specific idea in mind. The simple Deterministic Automata have very few
> > dependencies and the code path is as simple as possible to be verified.
>=20
> Maybe you are unaware of this, but you are picking up a discussion we had
> with the late Daniel Bristot de Oliveira.
> I'm glad for the unexpected chance to remember him.

I was not aware, but it makes a lot of sense, I was directly quoting him in=
 that
statement.

Unfortunately I didn't get the chance to meet Daniel, but I tried my best t=
o
understand his original intent indirectly. Though I'm surely missing some o=
f
those in-person interactions.

> > Monitors can, optionally, add more bells and whistles like timers (most
> > timed
> > automata) or a dynamically allocated hashmap (per-object monitors).
> > Those are not even compiled on monitors not using them.
>=20
> To be clear: I have nothing ideological against the RV
> Different tools have different capabilities, and what matters is to do th=
e
> right matchmaking between tools and use cases.
> And the safety problem is too complex for affording any form of NIH-ism
> I have spent some time studying how the RV works, and I am convinced that=
 it
> can deliver on its intended initial purpose. And well.
>=20
> > There is also Linear Temporal Logic that sits somewhere in the middle, =
with
> > slightly more complicated code but still few dependencies (bitmaps).
>=20
> Yeah, bitmaps are one of the basic tools.
> There is only so much variety one can achieve, given a certain HW
> architecture.
>=20
> > Obviously all types of RV monitors rely on tracepoints, that's how they
> > attach
> > to kernel code and it isn't negotiable.
>=20
> It is a limitation that - as expected - comes from trying to adapt a
> tool that was born with a different purpose in mind.
> The idea of leveraging the existing ftrace infrastructure often bubbles u=
p in
> FuSa circles. It's undoubtedly tempting.
>=20
> > You may be aware of it, but the issues and requirements of RV in the sa=
fety
> > domain was discussed in [1].
>=20
> Yes, I am aware, I had notified my concerns already.
> Both Kate and Gab should have heard them many times =3D)
> But I can do an encore, here below.

Of course, you even commented there.. I missed that

> > Whether RV can be made free of interference to fit the functional safet=
y use
> > cases is still an open problem, though.
>=20
> This is perhaps one of my favourite pet peeves with the approach taken by
> many functional safety initiatives.
> They start looking for a tool that might solve the problem, but skip
> what should be instead a mandatory entry vetting:
>=20
> Is the tool immune from the type of interference it should monitor?
> In other words, is it qualifiable?
> If not, can it be made compliant with FFI requirements?
>=20
> If the answer is no, then why bother going forward?
> First find a solution to that. Or else there is no safety story.
>=20
> Instead, often, this aspect is neglected till the very end.
>=20
> Let me give an example that is similar in spirit:
> containers, or rather cgroups.
>=20
> They are often advertised as the solution to safety problems.
> It is undeniable that one can use containers for limiting resource consum=
ption
> of certain groups of processes.
>=20
> But is their implementation safe? They are pervasive, and if _their_ meta=
data
> gets corrupted, they can actually impede the correct execution of those v=
ery
> processes they were meant to protect.
>=20
> > And of course, as you mentioned, in some cases RV just doesn't fit the
> > requirements, but where the logic is complex for hardware-only solution=
s RV
> > could help, if we figure the other issues out.
>=20
> Precisely, "_if_ we figure the other issues out".
> That should be the starting point. Not something postponed to the future.
>=20
> An assessor worth their salt will go straight there:
> "how does the tool defend itself, in the first place, before thinking
> of how to save others?"
>=20
> From this perspective, safety is worse than security, because security us=
ually
> lets you plan your defences so that you can use anything available, to
> prevent an attack.
> Because the core system is assumed to be trusted, usually.
>=20
> With safety that assumption doesn't hold.
> One needs to prove that the dependencies are acceptable.
>=20
> You wrote earlier:
>=20
> > The simple Deterministic Automata have very few dependencies and
> > the code path is as simple as possible to be verified.
>=20
> That is a start, but that statement is formulated in a subjective way.
> And it is qualitative.
> To be adequate, it should be turned into something objectively quantitati=
ve.
> Measurable, verifiable.
>=20
> e.g. if your "only" dependency is kmalloc or get_free_pages(), that is al=
ready
> pretty much unsustainable, if you expect that those functions must be saf=
e.
>=20
> And if your automa depends on internal states (what else could it do?),
> then what happens if those states are corrupted?
>=20
> Some people will tell you that what I just described is too strict, and t=
hat
> the standard allows for "expert opinion" or "expert judgement".
>=20
> First of all, that sort of approach fails the completeness test:
> it is assumed that the expert knows enough to actually assess the whole s=
ystem
> thoroughly. Or that you have a collection of experts.
> Same thing: who knows well enough the entirety of the kernel code base
> to confidently
> assert that it has no bugs that would be harmful in these situations?
> Would even the collective of kernel maintainers be comfortable with
> that statement?
>=20
> Another thing that you will hear is that things can be tested adequately.
> There you have another completeness/observability problem:
> who can ensure that the testing input/output vectors are sufficient to
> expose all the configuration of internal states that are relevant to safe=
ty?
>=20
> It doesn't mean that this will prevent obtaining a safety certificate fro=
m
> some assessing entity: different entities have different interpretations =
of
> the standard.
> One then should ask: what is the purpose of the exercise?
> Getting a certificate or reaching a certain level of demonstrable safety?
>=20
> The risk with the typical top-down approach is that one invests so
> much in a certain solution that it becomes extremely difficult to accept =
that
> it might turn out to be unsuitable.
>=20
> With bottom-up (ensure FFI of the monitor/fences first), that risk
> doesn't exist.

That is all very interesting. I'm not too familiar with safety requirements=
.
I get that ftrace and friends are themselves hard to validate (though argua=
bly
they are the best way to instrument a kernel with minimal stepping on anyon=
e's
feet).

In general I feel anything that tries to validate the kernel from the kerne=
l
itself will have this kind of problems. It cannot really be isolated from w=
hat
it tries to verify.

How do you see a tracing-based solution that satisfies these safety
requirements? Something running on an external chip and reading the process=
or
trace? Something involving clearly separated VMs?
I know that's what some fields do (avionics), but is the overhead worth it?

If we assume metadata can get corrupted in any way, I'm not quite sure how =
a
software can ever be considered safe.

But thanks for the deep explanation, it makes your point very clear.

Gabriele

