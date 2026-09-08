Received: from mail-pj2-f12.google.com (mail-pj2-f12.google.com [74.125.227.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B73529412
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 13:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.227.140
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788873101; cv=pass; b=lpoAe0oL4erXsHtFOaXwVq/neUKgAlxHjGbuhRa8ySaxneSRquzs/GKv9dqmv8JDDvipfKTztSktrALDxTQrtRWUB+OHKr7ZXgZkutDaWc/2CuM4Un4W8qDvml8rQ2woFmO+jl6ZGKw3dW4Mt+oK5BFsiRjhPrwpdzflJYxR3zU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788873101; c=relaxed/simple;
	bh=vvl8cHqv4WtA9TGFLVAl71Yt/DISaRdcTfB9IMooN2Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IgkEMxyB1/D/BkqgEgJD2Kseps2huyJ+ue5QvlP+oe3+wq86YYz4gcbYPEbvrRvaSxkVjL7kgCsa4D/rbGUQPYeE06SP9aTCEoqi/7/CPrjKfW067cK3uuaC18DBU4SEd7U/uxvvUGaRfGpiE94wGn7SAGiblttDuzlZ4CLB9nQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eHJLOYSw; arc=pass smtp.client-ip=74.125.227.140
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eHJLOYSw"
Received: by mail-pj2-f12.google.com with SMTP id d9443c01a7336-2d6ff23d81eso2693345ad.2
        for <ksummit@lists.linux.dev>; Tue, 08 Sep 2026 06:11:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788873091; cv=none;
        d=google.com; s=arc-20260327;
        b=ZF7B23TAxzD1kCP1dV5ZtHtBllttXbEjLyxJ1qLDqVT/CSTMao4wtBbsIcO5O+5DPq
         w2h4BpfQXZP3s0Ts5AyQRZpLIdD3rXl0LWq37h4T99kS71o3lY4zGDRrYX8tnVCZ9g1O
         3rMxSYt6xOnbNtRqChWb51mXAfLMAG6J9A6gGx7Um5BxMkCM48fb86/H1GyFyMK0uDck
         6VeRLBPXIhAQIpZ2WUWELsWAyOtO2PqdE+fT4gGQWxbIKLCGu4y/hOgCaOnbCeO8U3Bm
         Oa8CoVz5qmER3OEuxGyyOOQm44CE40IduFRExzPUH735f1G1M8iVgjn7APUrf9e5j7pg
         WLpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vvl8cHqv4WtA9TGFLVAl71Yt/DISaRdcTfB9IMooN2Q=;
        fh=0i98nTUSYfGESTYwNMPZgxbeR/y2xWaqbI2Kzo/+18E=;
        b=Haxbg2NkBXqbC8LYHdN2Tfi/N5yikVhkWwVr28LRtbmqPHq9WFw1aOMIzd1rlIR3eS
         Z40xeCfC/0ZxY4S1qkhyofdncu9dHuMQ9IjCg5/i4/H+ZH2sRWaEm6K07Si5jDpZw8v2
         vM2wT/UyXW+wSNdmwQRD8G+xU9mYEfvsaCVN3VBmsPZ7h3Qbp5iV1rBWPymg/Ye10Ohl
         tNngt4ZOX+UJIlsYRHS19CxRTQIU++YdjJWm5/RRQPdzv+ZZjM1Z20UNmY37jtB1SHgv
         uyC3AQeH/lASBpXTNOvZufhAlKHPCVeHHWECAumGq310kLI8ghqEoeaHg5BWRBpZSKal
         KoMQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788873091; x=1789477891; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=vvl8cHqv4WtA9TGFLVAl71Yt/DISaRdcTfB9IMooN2Q=;
        b=eHJLOYSwcpQsN9C5/dcndcmamrudeFfvjJgjjxyhU1v+e+2bMn0GK+FXEAn06otIGl
         qGG7I4/Md2cFAcLo3q9nu3rxDzqfBmaA2PEQNu4sVBtoJYi2ceuhytxH7dRv5fJ9VKUD
         u5jUppuPy4OnheH1Add/VZKypzYt8pQ1B/DMOQyT5FswSYMM3DEH7uP5nmEz31chpofi
         nMXv8cHi6Ka3nn6YiyNvmG/nICl2CkqhOp0E257GOm7DU3WqJvKO6RoxlH1rEMAR8KW7
         cBvb09Bj+cOpkV0fgLK9Sj5yGFtOsFq0LKF8vEmwyvc7xGBvXF4lN2BpPl+k2Fgl68P2
         FlEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788873091; x=1789477891;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vvl8cHqv4WtA9TGFLVAl71Yt/DISaRdcTfB9IMooN2Q=;
        b=bhuF5j7UR9fGkQS14YN9EVJggyeYl+hXH/w1jtRAJKLAkEGKFbHlWeebR32aXsw5PO
         gtDrWbXSnS8vpCxHObeDdB76qwv2DHNZxJa+ERm2sVDNmb6Gtlnwj04uIMdHXd3VEMG8
         u/bUqi37BkpAYeraGwoAQl1Fruvi4TLP81ec9Nzf632VDZpH9A01E9GGxeiSTIKLXysZ
         wm4wLNTV8M9xNWfku7jF6+U3glo2KEto/xV/3Dq34fvUk5mCZBqHgYNuXBANF4dg3mkR
         q1UiFXOhApdLfQaarKGFr8ijCo25Bkhq7GmLgllcD/TIQAChl4c/tdhby9OmbRaGN3xq
         ZsLQ==
X-Forwarded-Encrypted: i=1; AKwUvBzCt8bZrVIZDjoqsgypqT+K9LgNdXCMgefMcWfKoNA5jQ/d9NDylwOrYdFOHA9fU1oUtPwiwPDC@lists.linux.dev
X-Gm-Message-State: AFuF++kJRkGV5gV3UE4v6xui88nkC6gJMf3wczWDeJPScojx435Mzta0
	Cx4pukme0AArCyxO0nAP98UFMKOAqcqyLigkdB46LG2gNZqAWQZA/hjo5GPy43j5oXyozGWsAs7
	7A/6QnmRUaBtvn4F2+q0Fg+mAMq+vTT0=
X-Gm-Gg: AYBFou2OFryk70ULQxZfzPQ0beupUKzZvo1E26oZ3Ei0GnIa2lVSYJhA3Fzrqv1J7te
	igCIoDOK+viCx7OUFL4FhZusXhJTtsW5XFqdJKl+fK6MFZyyiq6Z1tU5e8LhBod0jxZ4pDng+lc
	EuvtXog4SfotcrqKHI2X+XC4VX+XOTgr/os8k37+qsR17lme8mIDynDRz7O4F8TptXtOSE8rK+8
	E7zR8JT2AC0m3kjfTSnupRFcAp/1z8VLsYpVH0B5ujz5JiSpSbdFNWSCBQSgsnev5V535QUJG0d
	omOhjgj54nFX/YmfL7d7SKVHyy6UyLKy1LS+eTz9iMetso6Fsn7Bk/j6F9W+ldDtYTIhpo8+UFW
	mgmVcvV79xlK/a74Ir3+SNPRJu7qe9oqkjKo5L/G/XwcOmiziBP1+MZU6SDoa
X-Received: by 2002:a17:90b:1c08:b0:38e:6d4c:14df with SMTP id
 98e67ed59e1d1-39b266ec42emr28179342a91.1.1788873090974; Tue, 08 Sep 2026
 06:11:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh> <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <2026090810-yen-tablet-8843@gregkh> <CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>
 <2026090825-scallop-pushcart-830c@gregkh> <CAH2bzCS_LHff_RLyYP2bKAmJOZEJNBJyBsZKnG6E=7JRDLjLng@mail.gmail.com>
In-Reply-To: <CAH2bzCS_LHff_RLyYP2bKAmJOZEJNBJyBsZKnG6E=7JRDLjLng@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 8 Sep 2026 15:11:18 +0200
X-Gm-Features: AcwNN1Ue4PhbF3mPeGM47-WHQ75uEzui3BzmL_2F8t2uE5S4a6fqEEDfwrA0U3c
Message-ID: <CANiq72nep9_Cd7CcgrxNehN=-ZETZRjsQzJnSR9MV3B_R3khJg@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev, istoppa@nvidia.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 8, 2026 at 2:26=E2=80=AFPM igor.stoppa@gmail.com
<igor.stoppa@gmail.com> wrote:
>
> While it's clear the value put on code, I have to confess that it's
> less clear to me
> where/how to initiate any discussion about the kernel development
> process itself,
> what it entails, and if/how it can be amended.
>
> I have tried to explain the constraints we have to deal with.
> While I'm not expecting an answer, perhaps you can advise where to
> bring up this topic?
> Clearly you don't think it's suitable for ksummit ;) , but then where?

I think what you are trying to say is that your process to retain
qualification would require some changes in the upstream development
process (even if we assume the code is merged). Is this correct? It is
at least what I would expect, just guessing from the little bit I know
about functional safety.

If so, the issue is that you will have to convince everyone else to
adapt, at least around the relevant subsystems. It will be hard, and
you will have to be quite clear on what you are aiming for -- it is
unclear to me what you will exactly need. For instance, will you need
the kernel to run a certain process before every release, or to
maintain a traceability matrix of some sort, or...? Will you do all
that on your side only for certain releases instead? etc.

In any case, before any of that, what you are being asked to do is to
show what you have so that maintainers can understand better what kind
of changes (on the technical side, not the process side) you would
intend to put on the kernel. That will likely clarify matters, and if
the technical changes aren't suitable, then there is really little
chance to even attempt to adapt the kernel development process for
what you need.

I hope that helps...

Cheers,
Miguel
