Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CB01FD1
	for <ksummit@lists.linux.dev>; Fri, 24 Jun 2022 06:31:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46328C34114;
	Fri, 24 Jun 2022 06:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1656052290;
	bh=F4r2RkZMGkpjJEZFo5Znv+4qFo2OAG/KZTmswJ39XjI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iXlKxEu5sV4nCWlKhCJ7iteoCiB2RVOp41ri06Lus7hf+fv4JCqejThm5UILhcdx3
	 CWORKW6xc7o5SeWDBrym8+5evPZ+MfysA3//HQmTT86h1SPwuOC7LkxqZGProidt4d
	 xv+QXtWgCNDTrUGp6TogcOYTJnwWuZe529MErHEY=
Date: Fri, 24 Jun 2022 08:31:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	ksummit@lists.linux.dev
Subject: Re: [TECH TOPIC] Driver probe fails and register succeeds
Message-ID: <YrVaPvqE+lB42OPD@kroah.com>
References: <d39ab7f8-db79-2f0d-9d2c-ecce42505b10@linuxfoundation.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d39ab7f8-db79-2f0d-9d2c-ecce42505b10@linuxfoundation.org>

On Thu, Jun 23, 2022 at 05:05:30PM -0600, Shuah Khan wrote:
> I have been debugging a driver probe failure and noticed that driver gets
> registered even when driver probe fails. This is not a new behavior. The
> code in question is the same since 2005.

As others have pointed out, this is "by design".  Probe is independent
of a driver registering in the kernel (i.e. module_init()) and should
never determine if a module is to not be loaded or not.

That was part of the explicit design of the driver model we did back in
the 2.5 kernel days.  We don't want to go back to the old style of "if a
module can not find a device to control, fail to load" model, it does
not work well for a variety of reasons.

So it sounds like the driver is working properly for this portion of it,
we can discuss the specifics of it on the subsystem-specific mailing
list to find out of anything else is currently wrong with it, but I
don't think this needs to be a tech topic from what I can tell.

thanks,

greg k-h
