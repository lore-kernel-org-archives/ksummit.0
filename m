Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E182907
	for <ksummit@lists.linux.dev>; Thu, 17 Aug 2023 12:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=UX/lCZjbDc1wTuFcwfwp0aRv627ZWAB7FPmg86MvWmU=; b=VeCP3GrDwU/9W/l9jxC/DneMwG
	DacmEGlHljHD4062P7BfAGt7FOpe15lMSvbWo6KUsHYbbVRU3Ko4dIyJPs18L7A6T3qGCvri+R/pE
	4p8OkD0EAckzbTohPWyxEIi1U5a3GHNS/ESZ9/GJGm3KZGlyMLzHMmGNv+WTqxt1VONU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qWcEp-004NEP-6o; Thu, 17 Aug 2023 14:36:31 +0200
Date: Thu, 17 Aug 2023 14:36:31 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Luis Chamberlain <mcgrof@kernel.org>,
	Josef Bacik <josef@toxicpanda.com>, ksummit@lists.linux.dev,
	Jeff Layton <jlayton@kernel.org>, Song Liu <song@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>
Subject: Re: [MAINTAINERS SUMMIT] Maintainer burnout
Message-ID: <44814ed5-7bab-4e56-9ca6-189870f97f41@lunn.ch>
References: <20230816180808.GB2919664@perftesting>
 <ZN0uNrpD8JUtihQE@bombadil.infradead.org>
 <20230817093914.GE21668@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230817093914.GE21668@pendragon.ideasonboard.com>

> > In so far as making it possible to get b) to help, my current excitement
> > surrounds around what Song Liu mentioned to me at LSFMM and then
> > quickly demonstrated that the eBPF folks are doing with patchwork.
> > Get the patches to be tested automatically, and *immediately*
> > patch reviewers and maintainers can get feedback if something is not even
> > worth reviewing.
> 
> This is interesting, do you have any link to share to related resources
> ?

I'm guessing, but i think that is referring to the "Checks" section in
a patchworks status page. Picking a couple of patches at random:

https://patchwork.kernel.org/project/netdevbpf/patch/20230816210049.54733-9-saeed@kernel.org/

https://patchwork.kernel.org/project/netdevbpf/patch/20230816210049.54733-2-saeed@kernel.org/

Jakub can tell you more.

      Andrew
