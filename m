Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9105F1DDF4
	for <ksummit@lists.linux.dev>; Wed,  9 Aug 2023 23:53:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24131C433C8;
	Wed,  9 Aug 2023 23:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691625222;
	bh=sYeOfGNLOS7gN48R/3z8e2iudO0HRBLXzgS4GsLuNK4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=n84FnxeVjrZy8qEaP/Fp+HTDjkdgGThMvaVL8cLbZECIsp5DSfspiuAKZbe73NqjT
	 VsSN8jTfiq3D2YbevCDfCygjvUDyFyNTTh8ssL89e853Qmelt8FahQHtJsnIUlm04I
	 pyYAxIeOvAPGQlFCnRu9SU97qxXmY0DIZBCXLjoh/AbAG9JVLwLNGY08Mvn0mK0t6k
	 7ux1MNUQtKZAXL5LHJYQ8SHi88NWcYsWGVHV1kjKDeTojSHd51JkMfsXWwW2JmM1mN
	 gyHCzBGQ6QL8b3wZg0mILvQCqG6UM+De8CvkB2aOG21WMPOiGk4MRSU+7UWakaZRyT
	 UKlxMOs7t0MIg==
From: SeongJae Park <sj@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Peter Zijlstra <peterz@infradead.org>,
	ksummit@lists.linux.dev
Subject: Re: [TECH TOPIC] Improving resource ownership and life-time in linux device drivers
Date: Wed,  9 Aug 2023 23:53:40 +0000
Message-Id: <20230809235340.91584-1-sj@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CACRpkdYtoD=OyoK_hyyORmUkcKcCM3m+GO1XUHdbmaS8gW0=BA@mail.gmail.com>
References: 
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On Thu, 10 Aug 2023 00:03:20 +0200 Linus Walleij <linus.walleij@linaro.org> wrote:

> On Wed, Aug 9, 2023 at 8:05 PM Bartosz Golaszewski
> <bartosz.golaszewski@linaro.org> wrote:
> 
> > Recently there have been several talks about issues with object
> > ownership in device drivers, use-after-free bugs and problems with
> > handling hot unplug events in certain subsystems.
> 
> 1. Good topic.
> 
> 2. Is this also where we discuss the use of <linux/cleanup.h>
>     commit 54da6a0924311c7cf5015533991e44fb8eb12773
>     ? Because I would certainly like to learn more about that
>     thing with an example or two.

Plus one.


Thanks,
SJ

> 
> Yours,
> Linus Walleij
> 
