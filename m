Received: from relay.hostedemail.com (smtprelay0010.hostedemail.com [216.40.44.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617AB2D5944
	for <ksummit@lists.linux.dev>; Fri, 23 Jan 2026 16:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769186577; cv=none; b=F9M3Lch71RQlo5ZuDpb9bBj7RD/SWKRlGNODdnDK8L/22PJrxSUxflj9s1RF/m9aDCzS2+GEp4L8QZ/cccwQGhsf+hzDvwXaC/1kwSuXe/gJvBMjkpGOd/COqaUhgWHg9cIjP6gANAst150o5tO2lfC991BW49LrNCzHnxfUEJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769186577; c=relaxed/simple;
	bh=by0cYIcCzQtvtF2X+E0rTu4wsfthagAM0+z+nnc40zc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=d2c4/jMNDtjGYOFAuAlqTVBxxDZvMTH5vJ/vKV9lIHBvSYTn40lxgY2kCX473+lYWNvpgYrJxAvH3QzEnIro4v4ihMnx4whB78pcZ9pExDhasx5BGy6DP8/OP7ZKQwM5b44uFamPysNg9jcCIA4nXjkJ3SyYdPAm8DNvM/sM4Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com; spf=pass smtp.mailfrom=perches.com; arc=none smtp.client-ip=216.40.44.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=perches.com
Received: from omf14.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay10.hostedemail.com (Postfix) with ESMTP id 325DFC1CBC;
	Fri, 23 Jan 2026 16:42:55 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf14.hostedemail.com (Postfix) with ESMTPA id F25592F;
	Fri, 23 Jan 2026 16:42:52 +0000 (UTC)
Message-ID: <677cb7ad745541bdd38a5598d476af66ed2e7aeb.camel@perches.com>
Subject: Re: Web of Trust work [Was: kernel.org tooling update]
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, James Bottomley
	 <James.Bottomley@hansenpartnership.com>
Cc: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>, Konstantin
 Ryabitsev <konstantin@linuxfoundation.org>, users@kernel.org,
 ksummit@lists.linux.dev
Date: Fri, 23 Jan 2026 08:42:51 -0800
In-Reply-To: <2026012340-wildlife-scratch-1efd@gregkh>
References: <20251209-roaring-hidden-alligator-068eea@lemur>
	 <6e0c8c00-4efe-432a-92e8-c51aa15b4a34@kernel.org>
	 <2026012340-cannot-spud-5d46@gregkh>
	 <806a695eff99bd2eba935d0d5ada29cc29b31818.camel@HansenPartnership.com>
	 <2026012340-wildlife-scratch-1efd@gregkh>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Stat-Signature: nsmcnx9mpsk7i618ab6gmganjgtizqm8
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: F25592F
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1/vt2RidKd264E7Aq1OMsTQQwIaHF83thU=
X-HE-Tag: 1769186572-353360
X-HE-Meta: U2FsdGVkX1/Apw0JvWsrF3+tbRYuiNgfe4KK9fUlmH6d2iK2y6JxUxuAqAMTivdYl+UzPjX2r+2W4Tbff7z7NysIXiyfMJasy7g6dSHLrGz7RULHdSVzIi6W24kJZrjvXVc29aFLLDwej4mHZSts6NyVRw6bt03MYIL6KQnEIubxU44A41RmMqp5BNkRWtwky11xjwv4pJYC+tVL/2Q3PJJC5ROZ7NmHXU74z/NKu/PDndl9PEYkg4HrGmZb+PZ8sIXL31en6xccCAGrT7T4DMItAXapGMNjkG6xCdkrSn18BpKh8j2YsTkDSO2klN7k+GNhOghLFEXNZdxBNixC0LAGQjWLPzM3

On Fri, 2026-01-23 at 17:33 +0100, Greg KH wrote:
> Surely you don't want us to be touting a bunch of vaporware at this
> point in time, right?

By announcing it before showing it you _are_ touting it.
