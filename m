Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCC31397;
	Mon, 26 Jan 2026 03:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769397635; cv=none; b=q2zOvDQnSverD5/Uap0IIu3jqU3YaHi6rEmUynPfRI/uOkmrwupnmMXSzBLyG/HzJuO1hakq8ah7e8wm9i0PYJUnynVnoX2J/pcoyFDZg14bpofUB7R5VaR1VItbVQgnnHM9jCZilfVGksViEaMzMydL1HPuBeNwYQIMlYMEiaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769397635; c=relaxed/simple;
	bh=X8SE7CfRQsHYzhgWAjcsDQxMBwO7++yfLf76+/AIVUw=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=n6ND4vJM+kYoCl8xLhuin4iG4ED855MDVZPOwdGq+sRdnG562jr3mMk+Ldla2e0kyBJ1aKoIgCKl68I+op6Kj4n5scXlbOTTiDeUF/1uPypBjoMsx9o+DbKaY+WlFKUFAzASCjJxg6pZ/GpTh/7ha6GPdytsVxbxNOVod4kq5Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=jU2SsnFF; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="jU2SsnFF"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=JYNDcxuPfoiOfYvI5yqRs5Xv80ISyrnbL/Xhu0Z3eiM=;
  b=jU2SsnFFmo0cAkP5hb2nR3k2zjh3qaMGQdbMAXzfyE1GqlfhcP9Go1vr
   s2FQoXxmW3erMd3Fq70/oi5lfUX4A0s19qS+GEby+xdeyG49csnxWy+GG
   2jwJtwXoMeEFKGx+6s323TtVHRpEaB/N5FjxgyqxLA5lkWnIgt6NufW5m
   k=;
X-CSE-ConnectionGUID: lCVHSzdwSBmVnSB1cz6alA==
X-CSE-MsgGUID: WTyL+LG8RXm+hjuc1e5kWA==
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.21,254,1763420400"; 
   d="scan'208";a="260241187"
Received: from unknown (HELO hadrien) ([50.225.219.62])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jan 2026 04:19:20 +0100
Date: Sun, 25 Jan 2026 22:19:19 -0500 (EST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Dan Williams <dan.j.williams@intel.com>
cc: corbet@lwn.net, ksummit@lists.linux.dev, linux-kernel@vger.kernel.org, 
    tech-board-discuss@lists.linux.dev, 
    Linus Torvalds <torvalds@linux-foundation.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Miguel Ojeda <ojeda@kernel.org>, Kees Cook <kees@kernel.org>
Subject: Re: [PATCH] Documentation: Project continuity
In-Reply-To: <20260124012256.1856709-1-dan.j.williams@intel.com>
Message-ID: <eaf77b3-9c82-1df2-491a-5bd41a7fbb2@inria.fr>
References: <20260124012256.1856709-1-dan.j.williams@intel.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 23 Jan 2026, Dan Williams wrote:

> Document project continuity procedures. This is a plan for a plan for
> navigating events that affect the forward progress of the canonical Linux
> repository, torvalds/linux.git. It is a follow-up from Maintainer Summit
> [1].
>
> Cc: Linus Torvalds <torvalds@linux-foundation.org>
> Co-developed-by: Jonathan Corbet <corbet@lwn.net>
> Signed-off-by: Jonathan Corbet <corbet@lwn.net>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
> Reviewed-by: Kees Cook <kees@kernel.org>
> Link: https://lwn.net/Articles/1050179/ [1]
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> ---
>  Documentation/process/conclave.rst | 41 ++++++++++++++++++++++++++++++
>  Documentation/process/index.rst    |  1 +
>  2 files changed, 42 insertions(+)
>  create mode 100644 Documentation/process/conclave.rst

Reviewed-by: Julia Lawall <julia.lawall@inria.fr>
