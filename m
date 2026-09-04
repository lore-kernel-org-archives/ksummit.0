Received: from relay.hostedemail.com (smtprelay0011.hostedemail.com [216.40.44.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896D636F8F2
	for <ksummit@lists.linux.dev>; Fri,  4 Sep 2026 17:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788542757; cv=none; b=c1vh5+gapGyN+28I6KfsWmUEfjMPR1M1HuLtyvVB+6R7sm2X/p4EYRG45BfVimy2UQGe+CScw0wCWW/gegX3cMf7s3/ZMDfqr0lk6TxpGMALd6RUuSW53aartDlH6Sh1/Y6UE2VceXlyZ8JKXF932WvM/zv9X5rBO9S0TmKq8Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788542757; c=relaxed/simple;
	bh=3DtXMPnCPDU0+1AvVvbVLuMNT0P7e5LaE8XyZRrioLw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=T895RujcDRAH3FzYq1Va/XdYXBrXBKzImsqx4ZwDsFMKH/ZlqUiwYCDvt6I98pP/mHHlyF9X8WblgaoFRTUFNhZe3tFPaYe78UvJXZCBW1plPmksOBLKQFSZQhDWAAxjEQAUBMl6onW2EZdG2QixzNREjwxzOpdYv/2Wu3ugp/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.b=TYMtvovw; arc=none smtp.client-ip=216.40.44.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.b="TYMtvovw"
Received: from omf11.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay02.hostedemail.com (Postfix) with ESMTP id 86C1F120182;
	Fri,  4 Sep 2026 17:25:54 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf11.hostedemail.com (Postfix) with ESMTPA id 1338F2002F;
	Fri,  4 Sep 2026 17:25:52 +0000 (UTC)
Date: Fri, 4 Sep 2026 13:26:58 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "Luck, Tony" <tony.luck@intel.com>
Cc: "ksummit@lists.linux.dev" <ksummit@lists.linux.dev>
Subject: Re: How to credit Sashiko with a Reported-by tag?
Message-ID: <20260904132658.78be832b@gandalf.local.home>
In-Reply-To: <SJ1PR11MB6083385BE00A70389C211177FCB52@SJ1PR11MB6083.namprd11.prod.outlook.com>
References: <SJ1PR11MB6083385BE00A70389C211177FCB52@SJ1PR11MB6083.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 1338F2002F
X-Stat-Signature: oza8wc83e87uao314ukczastk9a744pc
X-Rspamd-Server: rspamout03
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18OlkOOkcVDUBnVP0Y+5vDibFZAmLdTA6Q=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=AmTWo8Y9/mZItBylMaKlINcmmhCkCc1nwB68G+4j8HM=; b=TYMtvovwqtY0DLZqy3fpb/PM5VQIroN/9PiOMxd+7iD/jTK1dwbBKvEHJ1oprtzkuED1xH07eNLDeDJyrWWrs2RvNCqlRKeq8NA8BUoVn7Z6ndjyF3ay6rbcBxIdtZ47yqsG+ih7A189JLvDrQ5+Zlsb5nVsKcH6yshAuy5J1Zo=
X-HE-Tag: 1788542752-938727
X-HE-Meta: U2FsdGVkX198+c7cD6OzyeUsLzBbqjk1yWKMqV3dHxFFQWzz0e8wxAkWO+vERFfpEySzDQVIFVvHwRjtlR7p3oc9pc4XSvxsjpozhhnelT2CntumsiDqmS432z/dEsjV+KCx7+Ono0R8P8hSDu3ZtnNKB8A648pcmfdnRQTnEkn6f1hYdT/sTKY9fObGpWCu7cQKdn9rmbF26vJQ+i2LSPIgQx9+CESlDzhtK9pGoIMdjSqUjpeCU8NY5qSpQ8nB9ukOOdVFmqBRLkEe4+8enZB0r9s9ixuKMoZKcFTFQJfPa1wsH+wAjwz7qZS9aVCX9q9W9kViW5tdXApC5AFJqFNnnHf11JYLGmWrUdDW87G136PhQmeMQI3Fj3aJAa+64yfiuOX/lkWUZF0h+LBHtKGWS3j9RD7SrseSLTyRgmKrIYigzOKywhjIAh6sjxoHZXJBw8c4nRACGxHy7lJ9sRKEKXGsrcvw+NH557a71GhJVcDcBvJRob0Um0mNArMPmAVKrTm6zXKOXIE0MhDeVY8F7EeYnKmuj/+63kfts5EuCkcJlZt4SRVb+Njv+p4XX4jaAG+0G6WFwQMV212IeQ==

On Fri, 4 Sep 2026 16:57:33 +0000
"Luck, Tony" <tony.luck@intel.com> wrote:

> I see 30 different variations so far. Most popular are:
> 
>     211     Reported-by: Sashiko <sashiko-bot@kernel.org>
>     142     Reported-by: sashiko-bot <sashiko-bot@kernel.org>
> 
> which maybe make sense for those lists where a bot is sending e-mails to the list
> though I think that ought to be accompanied with a Link: tag to the actual e-mail
> and scanning a few of these commits it isn't done consistently.
> 
> Different e-mail addresses in tags where one has been used. Is there an official one?
> 
>   <sashiko-bot@kernel.org>
>   <sashiko-dev@google.com>
>   <sashiko@linuxfoundation.org>
>   <sashiko@sashiko.dev>
> 
> But if there wasn't an e-mail? I see a handful of links to the reports on the sashiko.dev website:
> 
>       1     Reported-by: https://sashiko.dev/#/patchset/20260415143735.2974230-1-elver%40google.com
>       1     Reported-by: https://sashiko.dev/#/patchset/20260424100221.32407-1-icheng%40nvidia.com
>       1     Reported-by: https://sashiko.dev/#/patchset/20260521021249.3258069-1-oss%40fourdim.xyz
> 
> That looks most useful. Though perhaps I'd be concerned about the long-term durability of those links.
> 
> No consistency on whether to grant Sashiko a capital letter as befits a proper noun.

I treat the reports no different than anyone else sending me a bug report.
I use the email that sent it, and the Closes: tag to the email that
reported it.

For example:

    Reported-by: sashiko-bot@kernel.org
    Closes: https://lore.kernel.org/all/20260901164836.D962D1F000E9@smtp.kernel.org/

-- Steve
