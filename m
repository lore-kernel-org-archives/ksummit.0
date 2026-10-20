Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792463323;
	b=rtaTqbakaW12qFD0FAORB9duWdGlrDygdplMIBQQHIyAnf/BJ2LgnVD6IwBehBRGeR1l
	 feCQD4hTTZAZVmJcQ85Y3DvKAKRg/1XEjtVRCkXRId8B/V09uhWEkg6mK84rIMKDNqiAX
	 PYz3W+9qi1WgNpyBbQFH0BWLdsTip4wxxhQXVLNCl7LtI1yhxb7gOswg8WEAvmSD9cZEe
	 Fr3ebkowkSTsAgu4xRYJV3z/9AOszZ3TndsfvBWX8ECHbTgl3TQUKIichkk8YMunWq2WQ
	 zgLY5LTUQ2NAd8U7NMSIE4bHFz0hmhn9JR56jIH9ZyQXZ+1Ff3bBBbUdNHcjma2ryLg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792463323;
	h=Received:DKIM-Signature:Received:X-Forwarded-Encrypted:
	 X-Gm-Message-State:X-Received:MIME-Version:References:In-Reply-To:
	 Reply-To:From:Date:X-Gmail-Original-Message-ID:X-Gm-Features:
	 Message-ID:Subject:To:Cc:Content-Type:Content-Transfer-Encoding;
	bh=osXNR9BiljiH8nBbsqhC0TD62cEKtYfRW82GgzEDGYQ=;
	b=fAvtRnOOW0cxY2MU3YAAf/6IeEf30SGX89AAslxLc/m5SrQF2V57SVN0nwzKk8iHqThw
	 XAbHRL9QtzYldGmdzZzwS/FhSibk6UWWiSRApoRbl3kArZVLRJsm94SCWZpq5azVQKhVE
	 qg0Js5fllDLP+ElHM7lPfkL6NM4KnvK4fY/2+9Opw3jP7tugO43VrjQjnMeJjecl8lVUu
	 syfzcyAY+mg63VCsw0Y9pF+sefYJ6/VS30pdkYOWvUtoAkHvBDEPlFiA9AuZpumiON3LD
	 ZDI5GC225zfroLoHXf5eJu7TfIPIffwypDTVRqLawODb+VZwWFZpX3/p082Ej9rvg7A==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=cyLSBHLq;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F82606A327
	for <ksummit@lists.linux.dev>; Tue, 20 Oct 2026 02:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=cyLSBHLq
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 413301F000CC
	for <ksummit@lists.linux.dev>; Tue, 20 Oct 2026 02:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792463323;
	bh=osXNR9BiljiH8nBbsqhC0TD62cEKtYfRW82GgzEDGYQ=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=cyLSBHLqy+10dzTY88yA5JRXdMnDrks8GoeW49gihdHyPETEPgBhpR15Ton8I3oyq
	 BOIaU/hRMmPP6HAJwcA57psfSa10WqpObfPC0ihD4id9WBi/iQlS41iAHq9l8pbsT/
	 9cdiI2wxezdYKjsN7D/oVl1LdF3k/THmqr7GLbu580RjGrMIJqymm5BgIQFjkxyHrz
	 rE/aE6Oj1fKJeVQ99rle0GA3xu07EX9/T3I0elXIaSQ0vjm0MhK6EUj3PWqunT9M3K
	 NjiweKuBeYuEt1pTAlJoG/nnh5RtfMFM15wsBVW3RjuXsK2lgroZVzF4GbfBnQk0R9
	 UUdNmcnduimeg==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-3aae7df0971so18696301fa.1
        for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 19:28:43 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvByUA0rlh+bJy9VZkMt4VZIrM6EQk/anbaGBp4I0iZFc8qSrO1Z/S++ucDoAW+DrWJ2GiwwDDGPX@lists.linux.dev
X-Gm-Message-State: AFq9FYKzAJpvsVcmXormpKDanYbXxmIq5gVg+H/CcWpTbfmYbTDT4VgG
	tZZKCtbnpnXwQB+8RrYo3oIvuhVs/OpaHjOeVrSLYwlvDopJriWrls8h/GLZTMGUoTcbhvOIAro
	H7iq8PjkiL6FQo+L4/CDcCN9uLu4HXiw=
X-Received: by 2002:a05:651c:43dc:20b0:3a9:df30:3d54 with SMTP id
 38308e7fff4ca-3ab2928c68bmr14858021fa.19.1792463321631; Mon, 19 Oct 2026
 19:28:41 -0700 (PDT)
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Post: <mailto:ksummit@lists.linux.dev>
List-Help: <mailto:ksummit+help@lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ksummit+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet>
 <350c7564-a833-4dd4-abf3-b8488280b0fa@kernel.org> <a6670d97-bf2f-4027-95a8-c091144725c1@linuxfoundation.org>
 <atZ-V08qv8SHD3ZZ@mit.edu>
In-Reply-To: <atZ-V08qv8SHD3ZZ@mit.edu>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 20 Oct 2026 10:28:28 +0800
X-Gmail-Original-Message-ID: <CAGb2v66=MeqEgfYTpEkLYaxxjCpkzGq8OMcZ_9Kn4HJvyzT0Ng@mail.gmail.com>
X-Gm-Features: AclHuK83APok1jmtmVektEz7mnCfyDJHngcvYJrSVjmsEEcpFAtr1vO803YjWEc
Message-ID: <CAGb2v66=MeqEgfYTpEkLYaxxjCpkzGq8OMcZ_9Kn4HJvyzT0Ng@mail.gmail.com>
Subject: Re: Patch pre-submission to Sashiko
To: Theodore Tso <tytso@mit.edu>
Cc: Shuah Khan <skhan@linuxfoundation.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, ksummit@lists.linux.dev, sashiko@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 20, 2026 at 4:36=E2=80=AFAM Theodore Tso <tytso@mit.edu> wrote:
>
> On Mon, Oct 19, 2026 at 11:53:27AM -0500, Shuah Khan wrote:
> >
> > When a submitter uses LLMs to generate a patch, it is reasonable for
> > maintainers and reviewers to ask them to use shashiko to find problems
> > before sending it to us. Asking for a shashkiko run before submitting
> > patches could become part of the patch submitting process.
> >
> > How about updating the submitting patches document to add a section on
> > this with instructions on how to run it?
> >
> > This shifts the responsibility to run shashiko to people using LLMs.
>
> If people are using LLM's to generate a patch, it would be useful if
> we can make it super easy for LLM's to call out to Sashiko as an
> sub-agent.  We would probably want to make it easier for LLM's to run
> our kunit and selftests as well.  Basically, we want to push the work
> to the submmiter, instead of expecting the maintainer and/or reviewers
> to do that work --- especially since if it's in the agenting coding
> loop, the LLM agent can fix the problem more quickly and without
> burning human review time.

AFAIK this is already possible as Roman mentioned in his presentation
at LPC.

And if Sashiko is too heavy or slightly harder to integrate, it is also
possible to just load the review prompts. Roman did point out to me in
private that this is not equivalent to running Sashiko though. This is
what I'm currently using at work.


ChenYu
