Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1A112B98
	for <ksummit@lists.linux.dev>; Tue, 15 Aug 2023 16:00:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73BC6C433CA
	for <ksummit@lists.linux.dev>; Tue, 15 Aug 2023 16:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692115224;
	bh=MUbTn2X918uE5LGBwfdIgCQMOn2MkbYIV6tEOx7rJdk=;
	h=Date:From:To:Subject:From;
	b=gXhNlysRy5cqRY8Jy7BN5+RsrT7wIwqPUmFzQf9rIZD0Ev9qUA05ysJArI5ko6ixj
	 +lB5c9qvWdopFl5HPbVkpngPNEtl6RV7SuIhb4b/kOcdtX4yZLCKyk+i0Z15rp3VGy
	 OKdFMUKtZPrKTc1Zpmzy4hdenLg/A+8i6YhihRbRzBSo3TVZraRJucKoYHHbWmkgvR
	 Yxpmy4/i+K5M6fe1zoPCunVChZqHC5cVoesY5F23HK6CgaVPVms8QMHFiAUK9RJGzd
	 DFngDrL+Eq1gA4QLRheWeMRDXwRXGGoWMb23+LWC+B44vRQk4oIQsYpZ2u1n1mycXu
	 QdRvGUtnASQWA==
Date: Tue, 15 Aug 2023 09:00:23 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: ksummit@lists.linux.dev
Subject: [MAINTAINERS SUMMIT] timing of releases, scheduling shutdowns and
 their impact on maintainer burnout
Message-ID: <20230815090023.1bf2e833@kernel.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi,

I'd like to discuss the timing of our process and how it impacts
people's ability to schedule offline time.
