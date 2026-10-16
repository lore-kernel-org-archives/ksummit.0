Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5C5257845
	for <ksummit@lists.linux.dev>; Fri, 16 Oct 2026 15:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792166338; cv=none; b=isIBJyOhrSYVtjF6IVyLCNZV8nBTY+HikHfvux46x44R+Ps/stJfPjct+otXHEz1Oau/5J8O0YcsRmtdHEwbztOkbwDTGiVjMGuQk5vGrDemthYfNWQ699Vl/V0WZ/PQynCpgRmGKnHgzRr3gDARM0X2sCXHzh8aHiYVkrvF7sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792166338; c=relaxed/simple;
	bh=JqL4+jW/dPxuUWw9P2AtsAeVwSlP0jkggzpO1fy+cyE=;
	h=Content-Type:Date:Message-Id:Cc:Subject:From:To:In-Reply-To:
	 References:MIME-Version; b=ZqnF6kBZ8bPP9fOpyYBrTTwL5dGIqTMP8iqnno6OLLUxL8uiHpBaCvn8dNDugOw6oUP8OjWQdwg12G9hT2VgcLzHdYl/8fLRhtB/9tyxpLyLOeAMy4I5HM4AHbnA/WYxFP/TtLTSbeRk+fhV4usZZJgNlp7nk5H5SO8URCBX82M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PdFpg+SP; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PdFpg+SP"
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-48eee44b908so91467fac.1
        for <ksummit@lists.linux.dev>; Fri, 16 Oct 2026 08:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792166336; x=1792771136; darn=lists.linux.dev;
        h=mime-version:content-transfer-encoding:references:in-reply-to:to
         :from:subject:cc:message-id:date:content-type:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=JqL4+jW/dPxuUWw9P2AtsAeVwSlP0jkggzpO1fy+cyE=;
        b=PdFpg+SPNY9Kl73RKd1w9HJE6ZrTp9DDzqXdAO8sQqmyFg2DVRL5CqzgV37MFvciM8
         ZAFa9N8GOihuBcMdsYvqwyX+ObJiA5m4sYwhi0fzqf9nPwByDKl7fTfrdCHu3QsFKNIg
         aAUHxdGprXvlmUK1EhJIPpuKVu1QVo7GH4XKzdZEpYfBpuBDUDwJEYyGK4CZAutpfClQ
         FV011as9oHJX5fAPdgc9Zi+QDdtzIoaHrj8OCxtA1SmTrP5IxG5NBWIzZeyNTcUASJiO
         vR+k5LLTUBakAnOZt3Sgyr3B3YuIC4yishbDJOm8dXE5FxsAZGBWo87AvGrYnpnX1S/2
         O1Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792166336; x=1792771136;
        h=mime-version:content-transfer-encoding:references:in-reply-to:to
         :from:subject:cc:message-id:date:content-type:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JqL4+jW/dPxuUWw9P2AtsAeVwSlP0jkggzpO1fy+cyE=;
        b=imxvMfyW2YKnRB/XyQWvu/vbRT4vUjscms/BuT+aKcGO7lzLC1RZSeiTaASnQSKhdc
         z22Vi7NGTpi8C7vJeuBPGrg1JD3XWn4MiaL15p0PFQur+sl2h0xUcMnoI50euP63zVs+
         HmfnoI1KMlkKl9GkVSoszRO229RgBGBiLa4onCEGKDydlNJ4iiAvfEz9p+dd3je93ubP
         QvWuVs76z7P+SLEQ/e/irqyEPw0uK5wZIIccvx8/gPH+SH9qGVdQF6qFwfTPvBo4nGky
         UNfxZhY7hXy5J+cFEd7X4Q4PEVT/5yn91v1Y1ZQSQ2AheUIBuk0VaPTLt61Bxr++eNmC
         lueQ==
X-Forwarded-Encrypted: i=1; AKwUvBwOqAkixnl73WLjdrrM0Crhj+aTmfvg/gdpW+Es3eGuZj4k1NUZk8cwwetzg+ttHIiqyh21P1s6@lists.linux.dev
X-Gm-Message-State: AFq9FYK7X9s+oFs+XS60EEHckwAlmVZEgWaCtc5NahmcMvZoXYeyG7Hy
	4jC4RzdKSX8q65f9OL9TV8xnHypKnkLUH8EExqbGnIsRflCczNhKVE/v
X-Gm-Gg: AYBFou2hoyfxilG8vnqEz/vsUN91ZeGsP50VRsP+f/IOhYh7oJiUsZzmemIzHmvLMIu
	iYH7nzMPotUcbA4mAsxk7qftRXa+E9pU5T9LvgQLeFfVjukwbe8LQ365xq9vi5LDc0HHFDtVzvI
	yY5oMjWxgdE41aPXPXhKZ8b3z55o75ncNDEwwcHtmTnkrO7dLvZrQ6vSefmp9QdRyVUPSvNgoJi
	7x+SaiVzXL6GF26e1EJkbhMIu77XG69HjYqAtcMwWaDhG6zJtANetTYBGUnOQcm8mavlXcXLjmn
	qVQV61cvIMHB0qfMKsFfMq3fn5Aex2UGI0bD18LZdWyZN9L+pV0Z+i7RVhcnprgolZhVUE4DMbt
	Ecg+f0n7xen5Ix86u6KOmKef5Tlo7UidVOJ84+QYuHFoQj3Nc140bHQ/Bagb+CozMTx8enqVYL7
	DSahEgfZUG/2V0wAXlyfxqd+CyEoSUqnKBxirvjvUvLWh51V8IGrQ/Ik2G5txwYL4r+so4dG1j/
	PMbV0gIvFWSStXXi/Uc0N9RLz3Jr8K/UyAxuf2FV+dh8Zu5V1Z4vZmP2FEBZYKgQ1HcxmKHiHRf
	1kI=
X-Received: by 2002:a05:6871:c91c:b0:49e:5d89:be9a with SMTP id 586e51a60fabf-4a757a9a88dmr355079fac.58.1792166335764;
        Fri, 16 Oct 2026 08:58:55 -0700 (PDT)
Received: from localhost ([153.61.198.254])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4a73adff016sm2102314fac.0.2026.10.16.08.58.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 08:58:55 -0700 (PDT)
Content-Type: text/plain; charset=UTF-8
Date: Fri, 16 Oct 2026 15:58:53 +0000
Message-Id: <DM6DXZJSMPO3.J5PONDJ3HWNP@gmail.com>
Cc: <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Jonathan
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
To: "Sasha Levin" <sashal@kernel.org>, <workflows@vger.kernel.org>,
 <ksummit@lists.linux.dev>
In-Reply-To: <20261012213452.1863248-5-sashal@kernel.org>
References: <20261012213452.1863248-1-sashal@kernel.org> <20261012213452.1863248-5-sashal@kernel.org>
X-Mailer: mkdraft (claude review draft; edit before sending)
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

On Mon, Oct 12, 2026 at 05:34 PM Sasha Levin <sashal@kernel.org> wrote:
> +Each confirmed site is a separate bug. It needs its own fix, and its own Fixes
> +tag and stable decision, as described in agents/skills/find-fixes/guide.rst
> +and agents/skills/stable-tag/guide.rst. Sites in different drivers or
> +subsystems usually get separate patches, possibly in one series.

I don't think it's a right message to send to agents and humans.
When the same mistake is made in N places the interface is the problem.
It should be fixed in one common place.
This text tells the agent to produce N spot fixes for N maintainers.
We already see this issue on bpf list, let's not amplify wrong behavior.
