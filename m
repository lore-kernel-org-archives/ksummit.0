Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E1F0487CEF
	for <ksummit@lists.linux.dev>; Fri, 16 Oct 2026 18:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792175058; cv=none; b=eljr5jRkSn9ekLW2eh0LGAWa4X2yOQo4RmYpAJqR+iy5NB+1H5YyK9HVlzhjapKkBxw2+yUItPJG59fxV5naLwcgfUrkLrduHnPESiLK/UeIMvupwXBleFa0marbuqtJVdknquweCkOyJBfTb3HZ4T/6YREkAtObC5oaGTm8U+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792175058; c=relaxed/simple;
	bh=bIepsGyPsDjDb0Ip+H9KtkM7Sr8wz3KXlJWJMjG+7aI=;
	h=Content-Type:Date:Message-Id:Cc:Subject:From:To:In-Reply-To:
	 References:MIME-Version; b=JMGrG6IUdkUTOLTaJ5bxWLWPKFG/s+vHtmOVB8pZt/9upju5YZbZGqFN6zvKcu/8+tMf0BjirBKLrsWRnuKABdlONVWrQ5+Qn0Vttj6nTu45CMZXNGxAo/44y2qNxkEiZpYCneNwMKYWb03e8TYuRtpm9Ql/xEJRG6zb1msxV3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cGHdWQoM; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cGHdWQoM"
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-8875d220446so160340b3a.3
        for <ksummit@lists.linux.dev>; Fri, 16 Oct 2026 11:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792175057; x=1792779857; darn=lists.linux.dev;
        h=mime-version:content-transfer-encoding:references:in-reply-to:to
         :from:subject:cc:message-id:date:content-type:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=bIepsGyPsDjDb0Ip+H9KtkM7Sr8wz3KXlJWJMjG+7aI=;
        b=cGHdWQoMUjZMecEcWsIY5cmuZn9d+377D6hylQTc8DkMTnv8E3W/8OyMyFHOY4Ihq8
         9Cj9BHuqgIAcWkXPEWNf5ny2LUGIQbrYqMLI97ZFJAH/SwRnWybHjxJhwXoZX4ALzyVV
         xNCe4e5jJ7b8JcfIKhTeB4MB0IpVYeE8urzEs3f9XeflKODh+/AyxWzteVg0swzLPxvL
         lNVtbAQXo69IvhzE6QSnHnmz8ePoAxpFLzcnCPDfQBpsF75e1M6fypeZzJIHA5x8QlYk
         04LYIu8RzL68foaaE+ecc9A6ewBF5327P6mJF2z0mV9m7aNFeM52GzzZExUuFA+GvMcb
         eCtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792175057; x=1792779857;
        h=mime-version:content-transfer-encoding:references:in-reply-to:to
         :from:subject:cc:message-id:date:content-type:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bIepsGyPsDjDb0Ip+H9KtkM7Sr8wz3KXlJWJMjG+7aI=;
        b=WLn5D8M1VoEynbfgAa3js63ZmsSW4Zv4YMz0OBQgeoSeu5W+FJrHcr43XUDX6CSGUB
         vL1TQtXI+pyVZbwRhrK21bREV3P5918e0UnqvWwF3LFhAu9VD8Ip9VMZu9wCjZ9waFkz
         +hkBj2zBGpdZ8TEEhsAncubCAhozUAzetFM3Jhv6uBUwVcqpmNTc3VDNsAX5SESLVj/a
         zuPg0ve8elbDGmFtXXNFNGE6sjcCiIJvDeb67cGdp/sSE5pFnC0YX+zQ2gNz9N9eAjik
         jUX3km0fZXbljw/XQPnBbolCiFG+0W5UutPyjE72KWxBzN+CEB8RMOEtdUngAKS/Ms9w
         WbnQ==
X-Forwarded-Encrypted: i=1; AKwUvBxat3sHfQ+NtlWGbbblv93V4O5DeccSkW9SRSgyPkQfskUt1CIDSPTWU1krcLX9gzgbYN0+Fe8f@lists.linux.dev
X-Gm-Message-State: AFq9FYKhIdm5pzonPOs7274+Y38w3+PDZkA54PNk1rJsqHv9x0JRY4na
	1+bbHn3aYjNGRHAbMIfm5tFSVnmO06UxJFd7XELxA2UilzPYJ9dBBxzO
X-Gm-Gg: AYBFou3DWFBPMMEkEbEh6CFm5ie/+AV4pe5eIBhGWFysGUKStiWHGSP2dHrr1p5znPK
	8TU7Aa/n1+M0sZcRCChOEHz6/OXu1gBJ0FEkHtM2OLd9x9znkIhMEvH6tu9h14ixQfbare/coHW
	oeetB8OjLOYoaxd6Bmr2Jatdj38t41jXSco0cUsf51zxSNTjcV4gb8BHLlIqzKHqqRJzLR2QABY
	/mnb7S2aRvoKcEk53xX5x66OMi2xIZ5PE1CtyKyiMtT6DzrRN4v5Yd8Bl7oxwuOujWvK5FPr3RY
	BFZJNIGs0h1uMMzHqTPF1/z6HrN0uVQkcvdhhi51yuNML7B9qi6n4hixbgTNfXHTk8n8NUPGmLn
	wILlVFElaADibgZsRIaJ3YTwMp2/CpHOl5faA3v4n5B2kcNlMHw4PDDvDCy7EMuVASpWRCiTj6p
	kD0y1HZMYEQIUcV8hgbveaftS9Xf9f8ZfK6WE/NU2cqqwtF742pVIqHieJEABKvJUsv/KNhiStF
	Dvflod0GApqQH+CNSpajHbu4p7+tSwNIXO1PEG8+h5JiXCE457i8HrsDiBa8HfTj4ONVoEmvYMX
	uUg=
X-Received: by 2002:a05:6a00:4106:b0:87d:dc3c:1b5e with SMTP id d2e1a72fcca58-8a04ba2601bmr396865b3a.26.1792175056503;
        Fri, 16 Oct 2026 11:24:16 -0700 (PDT)
Received: from localhost ([153.61.198.248])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89f56c8cf81sm1506688b3a.16.2026.10.16.11.24.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 11:24:16 -0700 (PDT)
Content-Type: text/plain; charset=UTF-8
Date: Fri, 16 Oct 2026 18:24:13 +0000
Message-Id: <DM6H19P1797J.2QYZAQAOI9FTN@gmail.com>
Cc: <workflows@vger.kernel.org>, <ksummit@lists.linux.dev>,
 <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Jonathan
 Corbet" <corbet@lwn.net>, "Shuah Khan" <skhan@linuxfoundation.org>, "Randy
 Dunlap" <rdunlap@infradead.org>, "Mark Brown" <broonie@kernel.org>,
 "Theodore Ts'o" <tytso@mit.edu>, "Laurent Pinchart"
 <laurent.pinchart@ideasonboard.com>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Leon Romanovsky" <leon@kernel.org>,
 "Konstantin Ryabitsev" <konstantin@linuxfoundation.org>, "Thorsten
 Leemhuis" <linux@leemhuis.info>, "Michael S . Tsirkin" <mst@redhat.com>
Subject: Re: [PATCH v2 4/5] agents: add a skill to find other instances of a
 fixed bug
From: "Alexei Starovoitov" <alexei.starovoitov@gmail.com>
To: "Sasha Levin" <sashal@kernel.org>
In-Reply-To: <atJnq_ssIAGK-OSZ@laps>
References: <20261012213452.1863248-1-sashal@kernel.org> <20261012213452.1863248-5-sashal@kernel.org> <DM6DXZJSMPO3.J5PONDJ3HWNP@gmail.com> <atJnq_ssIAGK-OSZ@laps>
X-Mailer: mkdraft (claude review draft; edit before sending)
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

On Fri, Oct 16, 2026 at 02:06 PM Sasha Levin <sashal@kernel.org> wrote:
> What I had in mind was the kind of bug our scripts/coccinelle/ rules look for.

For kfree_mismatch.cocci kind, yes. Each site is its own bug.
But the other example in the guide is "a missing put when leaving a loop".
That's iterators/for_each_child.cocci. It was fixed one driver at a time
for years until for_each_child_of_node_scoped() made the put automatic.

> I agree that fixing the interface is better, but do we want to push all these
> agents there?

To report it, yes. The skill is read-only anyway.
Whether to change the interface is for the human to decide.

> So I think it should be a balance. When the skill finds the same defect
> in several places, it should also ask whether the interface invites the
> mistake, and if so report that the fix belongs there instead of handing
> back a list for N maintainers

Makes sense to me.
