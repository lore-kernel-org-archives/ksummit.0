Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5A8347AD;
	Tue,  7 Nov 2023 16:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="rUlgUnQj"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8FC3C433C9;
	Tue,  7 Nov 2023 16:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1699374929;
	bh=lsZy0fMPvbt6uRe3Uj25Md4I5ana8WW6hbTlOtaSGHU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rUlgUnQj0bipLBolvBZmrhRnruwnGhbpDnDpKPWtIxQVWHHCZEz/zKoM42k4kBn6I
	 +bprQREVvv+5kVsR0UYhIDCU8jbWgc3Omg5PAmlZOm2X4kIQbM99b6fzksfxtRfCpf
	 Oo3Gy3Tl45G4mw2l5/lbGjeyhTz8KtVOePuiABYg=
Date: Tue, 7 Nov 2023 11:35:27 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Pratyush Yadav <pratyush@kernel.org>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Paolo Bonzini <pbonzini@redhat.com>, Pavel Machek <pavel@ucw.cz>, 
	users@linux.kernel.org, ksummit@lists.linux.dev
Subject: Re: RFC: switching "THE REST" in MAINTAINERS away from
 linux-kernel@vger.kernel.org
Message-ID: <20231107-skilled-calculating-frigatebird-8db1bb@nitro>
References: <20231106-venomous-raccoon-of-wealth-acc57c@nitro>
 <ZUluOoDjp/awmXtF@duo.ucw.cz>
 <34eda1fe-0e14-4f12-b472-d152eadb7b88@redhat.com>
 <20231107101513.GB27932@pendragon.ideasonboard.com>
 <mafs0o7g5hiba.fsf_-_@kernel.org>
 <b36d7b18-2092-1848-e22a-7e34588db0f5@inria.fr>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <b36d7b18-2092-1848-e22a-7e34588db0f5@inria.fr>

On Tue, Nov 07, 2023 at 07:47:23AM -0500, Julia Lawall wrote:
> At various times, I have wanted to see the discussion that led up to a
> commit, and LKML was the obvious place to go for that.  What will be the
> approach to take in the future?

I assume you're asking if following links to lkml.kernel.org/r/<msgid> is
still going to find the thread? If that's the case, then yes, it's really just
a redirect to lore.kernel.org/all/, which aggregates everything across all
lists indexed by lore.kernel.org.

You can similarly search in /all/ for the subjects matching commits if you
don't have a Link:.

In other words, this functionality is not affected by which list the patches
were sent to.

-K
