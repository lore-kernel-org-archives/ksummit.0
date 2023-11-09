Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA626200C1;
	Thu,  9 Nov 2023 14:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQCEkNHY"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5354C433C9;
	Thu,  9 Nov 2023 14:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699539874;
	bh=sktZ8dPFtu5B4qhwYq3s9vRanXg34uuujIfwoSKdUA0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uQCEkNHYSyOF99FGHI89t3UMAgfqGGzj/dlREPSBCDi6RU9Qc+effjYkCMCaTQ3FB
	 dOabpP3KaKB669CZ/YC0IxEJeZaFHr+bMxC5KYYa8vN5gPcsM1cCL3QMMZbBQFezLw
	 W+e+wUyoEpg0yBOucVRUCGFrcb9av/jqd0fctThGJH7xBGhuyEUV4oKIVHHgzW8FWp
	 JseSbMvBhZi5kLw7f2bcnJt/pWWzZAUGQ6CgIW1nmrFL+FMMVK8iSL6SkztHXqWwqW
	 2oGzDk27tp9y4Be7DjzJ28vGT1jXWfUZzMpFRHxX5ePxUuRI0+PalCVfFDoLCLeec+
	 MBm4d+a2/3ksg==
Date: Thu, 9 Nov 2023 19:54:04 +0530
From: Naveen N Rao <naveen@kernel.org>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Cc: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, 
	users@linux.kernel.org, ksummit@lists.linux.dev
Subject: Re: RFC: switching "THE REST" in MAINTAINERS away from
 linux-kernel@vger.kernel.org
Message-ID: <zkogyrdvkdabaofmamd4laad5qqh6lic7eyc65ct7gvtkklno4@py2hk6qaxfbv>
References: <20231106-venomous-raccoon-of-wealth-acc57c@nitro>
 <87r0l2yi7v.fsf@email.froward.int.ebiederm.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87r0l2yi7v.fsf@email.froward.int.ebiederm.org>

On Mon, Nov 06, 2023 at 10:11:48AM -0600, Eric W. Biederman wrote:
> Konstantin Ryabitsev <konstantin@linuxfoundation.org> writes:
> 
> Has anyone come up with a good way to mirror the public inbox git
> repositories?
> 
> In the rare occasion when public inbox splits git repositories any
> script that just mirrors the git repository silent stops working.

If you're using l2md (which mirrors the repositories itself), or want to 
script this yourself, then you can check the manifest on lore to see if 
there are new repositories to be mirrored. I have a script that I run 
daily to check that. You can grab the manifest using:

  $ curl -s https://lore.kernel.org/manifest.js.gz | zcat | jq

Not sure if public-inbox-clone/public-inbox-fetch can instead be used 
with l2md.


- Naveen
