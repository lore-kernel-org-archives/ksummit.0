Received: from relay.hostedemail.com (smtprelay0015.hostedemail.com [216.40.44.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6733F4DE9
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 14:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786372906; cv=none; b=jmR6Jjby25XN+5yYjwzngxI9ttO4B9hBD1r274PkmSu5tz0J+Kn6++U5rmcHpVQsIT3q2+/4WpDrD/Ci0DfG0GzT+Q2z4V8Q6q19VOdgE2+SiPXEYRla41kQ8nIkn+r/5SBmsXO2CPfHPOJKB1pLt/zWo2E0FotYZV753hUCXy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786372906; c=relaxed/simple;
	bh=YLgqI7Stu32AEW7B0BSXZNE4PlW0xULnvGmOLVgc7Gk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LlZJyjNc9qNhAE7s1KMAK3cGdsfkzO7AU5nL5grmWaFOQwYgKgVfwJDP4PmnSI6ICqmT2ykuj3wJ5JF8AKOi+j3Y5XFM/NWW1HqsIyTvse3AA7h6xJkp+5cBiY9oBmRKfCEcxNwSljrG66Ke3QHi2B3QtTL91wcN/x1ymyyE8qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf09.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay01.hostedemail.com (Postfix) with ESMTP id 947271C0206;
	Mon, 10 Aug 2026 14:41:42 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf09.hostedemail.com (Postfix) with ESMTPA id 0723F20025;
	Mon, 10 Aug 2026 14:41:40 +0000 (UTC)
Date: Mon, 10 Aug 2026 10:41:50 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: Theodore Tso <tytso@mit.edu>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <20260810104150.2dd12365@gandalf.local.home>
In-Reply-To: <215b3cdfda17207d91b0fa057b01f3cb45eb874c.camel@HansenPartnership.com>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
	<anZi9nDTNu4WNc3s@mit.edu>
	<215b3cdfda17207d91b0fa057b01f3cb45eb874c.camel@HansenPartnership.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 0723F20025
X-Stat-Signature: e3ojkhubj7iasy91phebuie8f77gsmbp
X-Rspamd-Server: rspamout03
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/cpFNgGcgCFxPLvemcokppeFESnfXK3Mk=
X-HE-Tag: 1786372900-281806
X-HE-Meta: U2FsdGVkX1/+BiIz36QN5IwfTQhxYoXNVb2rHvoHSfHfPtt/K3lgZjwAE+2Q4UPkNqUv09FotOJqE+s9ynqP0rk7nngCngWgc9rvpsSOIzReDWXZkLYfsw6fkqeoDFkUFbsWjLivDNwNBTRwq1Ax7sbCcYMdGE09DpSC/YwyTKN5rx6B98hk6f8fk+Kkl4vRqCjUzZnTg/p63KYka+S/8FmuGQMAJUOvtb1/atG5wuHk6rMgszNtgEggPRVj9IHCADqt57YvS1Eg2i2kWFQTh6nG9J0dlwKD3sMRp+q8KM8hxD2jNJ5W+6M6G218qWdo9K9MLiDBsKEDXnftSvAKYWdfsE/YfxKS5P+U5VXzuFM7s8z8susVE1xTaxJ9/OhAwMDat+cvV58z+MOXDT4qw5vNXX/b+uGz

On Mon, 10 Aug 2026 09:54:31 -0400
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> So I think we first need to start with the problem statement.  I think
> it's that Linus doesn't go to any other conferences except MS, so for
> him to discuss stuff with us in person, or us to discuss things with
> him the issue has to be scheduled for MS.

Honestly, I believe if Linus just came to Linux Plumbers and hung out and
talked with the developers there, it would allow him to get a good
representation of the happenings of his kernel.

That may make MS obsolete, and he wouldn't have to stay in a room for half
a day discussion various things that could have been BoFs at Plumbers.

When he sat in on the printk session in Dublin, he listen throughout the
presentation and then gave his opinion about it at the end. I thought that
was way more productive than any MS session we had. It wasn't just a
technical talk. It was about changing how printk worked and how it may
impact people who use it in various ways. Something that affects pretty
much all subsystems.

Plumbers has a much more diverse attendance with respect to things within
the kernel. I know Linus hates conferences but Plumbers is basically what
kernel summit used to be at a much larger scale.

-- Steve
