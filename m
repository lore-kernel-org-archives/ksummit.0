Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=74.125.82.177
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792513436;
	b=R9CG5/SOyBA1hTjofyRYZOWdRkO2IbOqZbkprkH8jnMl4m0ib0Y6+DMrGAX6t1g5i5O1
	 EeNEX9alZvxd51Sf1jZKQBMTJEh7m0PvgOoOhwyFx+OTMXv54oTUpzExwXjthYUBj3FG9
	 h+hBS+vJU51zWb2NCoxAekDv9qsP3ibbEcBJuGy2ARv7C3ph7J0PxEptfpyu4FVZ1iqQA
	 pWXO/E7Edo8zemqk0sptT2WiBLYzCpax2U8Mgtm+TJpJKJUl69YEFSdM+872rKs/iYA8M
	 Pz6F0p/NohZsxujnIOvW4HruwICzVzorhkbzpW3ttHOQm7BHlyIcaXCKRkbZvJJ2QPA==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792513436;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 MIME-Version:References:In-Reply-To:From:Date:X-Gm-Features:
	 Message-ID:Subject:To:Cc:Content-Type:Content-Transfer-Encoding;
	bh=1/TU1fx5Q7KS3NNxFTqPhkwN2RAGL4ewSYUEXSsjILU=;
	b=Fjbi/7yBG8DbeI33UqnSMoZtI+yzTqAdwR4J+QUJUJSinqBNfW3Lmx2DjlbbBEJifv4A
	 iguqQ5j0+C/0UdhzGYCUTV0xGTeB+31ckrrwsvP8Ac6ZJ+L8jYjLkQEigQjpvVtC9uQSS
	 MyvYd5CU62WVWMxBvIAob2lRYStBLMYnYBB8kSOninIZqVXfOZ8TDFMPoVnkS1SDg0IU0
	 5nnarT5f+1ub8cHfedDr59GmYxGWymu6s0rcl37iXDguJjW7K8DiQGEUK2JFieRk6+Kau
	 +sIxQSEI5bp8n8kXU2eVtf8m1IXQ8dK9Tj1Xj5wci2UT5teE1YjpRJ+tILrTgeU+oZQ==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=GV3j9OXZ;
	arc=pass header.oldest-pass=0 smtp.remote-ip=74.125.82.177
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A57DC606A31E
	for <ksummit@lists.linux.dev>; Tue, 20 Oct 2026 16:23:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org A57DC606A31E
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=GV3j9OXZ
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-35e8253292cso230453eec.3
        for <ksummit@lists.linux.dev>; Tue, 20 Oct 2026 09:23:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792513435; cv=none;
        d=google.com; s=arc-20260327;
        b=Y5jASvWaswfvxnxMQzGR4ouEYk2rymUvd0rWSKGGpc9XlhSE3ize4SDWxeKP2eRUlO
         bATXOQQQkhDs9/UVszRUMviTiH8CMqwpdTGtCByhlsyo/7WIMe6bjG9qEMqNZpY9JrkY
         BS+Haa1YG6eKCQW51R8a4NACIWZSKVdoGJjkiwijlH5ubazWjYzr2uZ/7c/SC7UdWniz
         I1n/0Cxp1gpXBDdhnomp3bz2u+wcsjLG3bJWMBpju4eDknIGbz+mms6ACVy0EksfrpXl
         PGDoJGtL+lpSB1TH4Cf5Fb1JwNILHbsOhcHnaMIixhXfTrfUtW3Tbg+pP3ElKRY7xsCP
         Wqug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1/TU1fx5Q7KS3NNxFTqPhkwN2RAGL4ewSYUEXSsjILU=;
        fh=RmmR/0zp4+xXQ8FxL8VFZWQ//EmPkoIluejQsRvvIHI=;
        b=qk+trV/Ak5IeCsaFjGUYZHarKOLzdTPl5ozGaqpM0l9IRbGSGBMGkLAKAyNkSLSfOj
         a/25pGxXN+clqBS/arniKYI2qIyci73pzhQDS0p66cZ9+0OZjER5ie+qg/+U1W/OIUiP
         anxnKhbSeiHYwcSPiav33ACvU4Hp7F4lW3s/8aaEQl0oPIIVCuqS8Woh3sKshkEcC3qz
         Su/vlGgrRjI8om6UHlg63qVjjH/n9CndJL/upJSaGjVYkGc5dejtJr17siP9mTSTI+Pe
         rvBP4b1wSvqgY0Lt9EBMOgqN3hWn8OXqiXyVco15x7BXNqi3PdychKCZEK1I8Jahw8qy
         m6SA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792513435; x=1793118235; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1/TU1fx5Q7KS3NNxFTqPhkwN2RAGL4ewSYUEXSsjILU=;
        b=GV3j9OXZlJe1q37CDAueOVvhBdYXq1EHhJLYkv96GyRh1qTrk65e2bqw1SCYu2Rj3E
         RXNjWqQj6Vvw1rzzR0EpHnl0Lyg5+h2FSWPOTMWG1iKVcyrW652P5JurlR/NxFGOQXmY
         zLfs7RK1EDXoF71Evsgz715qAPF1S9BkqmSJdwUpDTxwop3N4uUR2inhFfQZgqbn/NcO
         cHXpqzTawyNd++P5S6qg/Z/IMzJj/EpC3nJGRj5ybtBMAAmrN0gg2RMlYsUuSWOCz/XM
         EItTTbRvduV7bNV1bbtJkVjzobEtpN2EaHnFZtOn4f7nYeu50ojDkxjvCJey8E50pchU
         f+bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792513435; x=1793118235;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1/TU1fx5Q7KS3NNxFTqPhkwN2RAGL4ewSYUEXSsjILU=;
        b=biuGWa1PrvxjVhDgKlmHU0jeS+gkDhwICW+Rbh+J7R6z3eTqwH7Ttlbq9n6UzSg+Ul
         M1xXMlDRfshLv5o9W9pebRldhR4qKi1mIVfuxUtB56hWLql0jO6g7DXdGo2PZUjdPeR3
         hZ7y+mjimYlHaLSmhsARQr7/XSL8UgDRwwLJfOaemxTofSBQgzC4erMsloWeoHYpX4vJ
         /J0jgtySBri7Q0BsTkLztYaP1S6/0lgy30eWJijkEPnbRiUvsN73kq9XJCe7JFBg32rV
         CfTYBgaWzh020nXp+focr1jCEaiSrhcdMlvtiFKIU9f5HlyMUrTxr/8sgG724GOR6N4B
         jg4A==
X-Forwarded-Encrypted: i=1; AKwUvBynfd4BcUZvk7ls+ZP70RBCIQGvmriD/XvtEFsWnkSZNw/6jJW2F8VbfWXxaoEruKQXlSY6cd9R@lists.linux.dev
X-Gm-Message-State: AFq9FYJ7LbF4NmGumCLn5e7tS8nt3eCxiQash9prXGnTGarDEXy3e2Tw
	63VosFghPOqGXL8iPnNEUr0SjBnQvuG1E+wnxguk7a2baTq56bnPvdT0QCIV/wRVlheLlu/I4OH
	T39w40BLPzgCl6puGSH+RDXJomrIr9r4=
X-Gm-Gg: AYBFou1nyTwyb8jjM5id24xndlpze0IQgcN5AxfL6e86bdURM6E69GUPv23XoFtfYxy
	UgN+Aa3oEh7TqBJIlVXeYnzYKa6NYBgp75QWNALirlhKVyIjn8vlJzp66fyQRkfqQvG28xybIUk
	ujJDz82CxwPiTJIwiszBEXwmQhQ3JO44p5iMWzFa4WZToCLAKz2HOvi6CL6dXHoXT+0Alq/PaJU
	tjO6033AB4cO84/IzUWPWANeNvKdjyok4naYeg+4SMcQly5TU8CTE5NQv4Ceu7Y7+5OP0zf62e+
	wxmODZQO2kYUdoEz/PYoxfZ12p8FIEUVzdhlFRlQ6yAaWhy3TJBM6Ssync4FHLu/cE3EgluRDLe
	YKqZPdpQzmNeUg0IEjSqYRZMByaHHGRIIqaa3B0bEr4jrG+UmO84E7iBuJxVbxsNAa7Tyfx8mfZ
	s5lD2ahsf82I9fQW5P0ttBRiNfmOd5Q8Y4dkBbuTY1dtmCancDmjagcRNuJXMIFMVSl3kJBz/Dx
	M4otkCVEEgTYbEFXDLWi9qgkeZebZ9mHprZ
X-Received: by 2002:a05:693c:409c:b0:35b:cb8a:8ce7 with SMTP id
 5a478bee46e88-361a06a6544mr28167645eec.1.1792513434719; Tue, 20 Oct 2026
 09:23:54 -0700 (PDT)
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Post: <mailto:ksummit@lists.linux.dev>
List-Help: <mailto:ksummit+help@lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ksummit+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
References: <20261016152828.3765695-1-sashal@kernel.org> <20261016160030.118973-1-ojeda@kernel.org>
 <20261020133156.3153106-1-sashal@kernel.org>
In-Reply-To: <20261020133156.3153106-1-sashal@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 20 Oct 2026 18:23:41 +0200
X-Gm-Features: AclHuK9Pd22EdXpHIfqU5N44FLer_q0ZOIvVGA7MYMY15OzC7aZuyhpkAko0zds
Message-ID: <CANiq72n9q93=usmoPqey_ohnrZ_nQOwvZfPYLAXgb0h1-NSjEw@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] agents: add skills for Fixes tags, stable tags,
 similar bugs, and commit messages
To: Sasha Levin <sashal@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, broonie@kernel.org, corbet@lwn.net, error27@gmail.com, 
	geert@linux-m68k.org, gregkh@linuxfoundation.org, kees@kernel.org, 
	konstantin@linuxfoundation.org, ksummit@lists.linux.dev, 
	laurent.pinchart@ideasonboard.com, leon@kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux@leemhuis.info, mst@redhat.com, 
	rdunlap@infradead.org, skhan@linuxfoundation.org, stable@vger.kernel.org, 
	tytso@mit.edu, workflows@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 20, 2026 at 3:31=E2=80=AFPM Sasha Levin <sashal@kernel.org> wro=
te:
>
> Could you send it as a separate patch to Greg and stable@? It doesn't rea=
lly
> depend on this series.
>
> 3/7 only drops rules that LLMs follow more strictly than the stable trees
> actually apply them. Adding a new kind of fix to the list is a policy
> change, and it should get its own review rather than ride along here.

Sounds good, I saw you split it in v4.

(To clarify, it is already the policy in practice and it is documented
on our side too; but I agree it is a good idea to discuss it
separately).

Cheers,
Miguel
