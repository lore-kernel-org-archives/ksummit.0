Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65ACA322768
	for <ksummit@lists.linux.dev>; Mon, 27 Jul 2026 18:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785177496; cv=none; b=I1nDBPRIoiWdymsCCIAKTsscuxnQDRVYzJ3GfA952w+Edkji99SVaKMvma9ooRVx5g4otWtCgEoUlXp0msNJISjwWzVzGVDgXnFyy1vQ0FbUctq4THuvOJF+YzbtSTJKhrzezEIP+zhr/kqh61GoRbuW5A4iaSyAeq33QtHiHYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785177496; c=relaxed/simple;
	bh=PdZllb6ssTIv3SNYvzJGSUIncFVQyLT+B//sJQo8PlU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tVFHAW6bj7cT7XCrIhtntxs/FWueUcST9Zy/Kx6+SLejXWcOsYTrWo0JOelvwAurdslJDvHn0doWdb4gzxx2SnE2aKRM7KOq2C1P6tdmz/yxStDpWFBsEzqlwMpIrIFDFhapDkNf/kU8p94bT1Rv0rb4bHSXo+apH9EgKS35K90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SemluGRR; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SemluGRR"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F1EE1F000E9;
	Mon, 27 Jul 2026 18:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785177495;
	bh=2L7ta0XwEjtUh+QhjYdkiujXxQzy2Zgj/fuK5g3++k0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SemluGRR2I1KeYresdQHtSDeVjJBjcUA9v6SyjM8yYvTvguRJVbpNTFlXMBN6XSUm
	 g7se6ebdM2hCj1piZ6ptGkFOqzzc0nvI47y4OcfeGlTIyPAbbAQbKqPRmsoE62/UKY
	 UbZTIue7XkYNWWfT3jZ6VdTQTUuL3pgABHLlkDEuCpBeLVix92/OXapLGEIRg+d8jz
	 KROxxVH5FKZ+rVVPXNr22J8pIHYF17SoZNiYvh0l1q2nAMwauiLVIYnkgh5zW8/ojM
	 7H+uKCOO8GtV9C5XPUEoRtTO7EI28db9Jv6QJBrYIpDAwdGQsppEuB3ry/3p8lfE1i
	 cfX8YRN/Ewi/A==
Date: Mon, 27 Jul 2026 14:38:13 -0400
From: Sasha Levin <sashal@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Jiri Kosina <jikos@kernel.org>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Scaling our security process
Message-ID: <amellfuGPXzj_LeL@laps>
References: <albMUqack9yMq0rF@laps>
 <241384q7-s5n1-0267-64ps-13r514r4o123@xreary.bet>
 <CAHk-=wgy3T=jxMy0kv0T1+6M0ahVbmWcXOwWOZU5efo=9U_XMg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <CAHk-=wgy3T=jxMy0kv0T1+6M0ahVbmWcXOwWOZU5efo=9U_XMg@mail.gmail.com>

On Mon, Jul 27, 2026 at 10:08:48AM -0700, Linus Torvalds wrote:
>On Mon, 27 Jul 2026 at 07:37, Jiri Kosina <jikos@kernel.org> wrote:
>>
>> Well, linux-distros@ is still there, and is used to coordinate security
>> fixes in exactly this way consistently for vast majority of all the
>> relevant projects, pretty much except for the kernel. With my distro hat
>> on, I'd add "unfortunately".
>
>I refuse to have anything to do with linux-distros.
>
>They have a hard mandatory disclosure policy, which I think is
>completely unacceptable. It means that if you send actual exploits to
>the channel those exploits will be made public too. There is
>absolutely no value in that, and it seems completely crazy to me.
>
>Yet exploit code - or at least a PoC - are hugely useful to
>developers. So you do want to have people who figure out some security
>issue - or any other bug, for that matter - to include such code, but
>that does not mean that it should be made public.

Does this asymmetry in effort between the fix and the reproducer/exploit code
really exists these days? Point your favorite LLM at a commit that fixes an
issue and ask it to reproduce the problem. You'll likely end up with working
exploit code fairly quickly.

>The *fix* obviously should be public, and the commit message needs to
>explain the bug. And the threat of mandatory disclosure for any
>unfixed bug is a good way to keep people honest. But disclosing
>exploits after-the-fact as if everybody will have immediately
>upgraded? Asinine.

... which is why I think that our current security process, and security@k.o,
effectively does something similar to linux-distros@:

1. We end up bringing more attention to a particular issue once the fix is merged.
2. We make the issue public before users had a chance to upgrade.
3. Any "script kiddie" is then able to generate a working exploit from the
commit that fixes the issue.

Even without security@k.o, things like the syzkaller dashboard and the
vulns.git CVE repo are effectively a massive public library of vulnerabilities.

-- 
Thanks,
Sasha
