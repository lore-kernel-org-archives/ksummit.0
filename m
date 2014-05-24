Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 649618AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 19:18:59 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id F22751F889
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 19:18:58 +0000 (UTC)
Message-ID: <5380F092.3070600@roeck-us.net>
Date: Sat, 24 May 2014 12:18:42 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Wolfram Sang <wsa@the-dreams.de>,
	James Bottomley <James.Bottomley@HansenPartnership.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
In-Reply-To: <20140524111927.GA3455@katana>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

>
> The thing I'd like to see way more in the Linux ecosystem:
>
> Paid reviewers/maintainers (selected people, no hiring offers). The
> number of developers increases faster than the number of quality
> keepers. So, the latter should be given the chance to focus on it, if
> they want to.
>

Problem with that is that in most company hierarchies code reviewers
get little  if no credit for their work. If anything, I have seen
the opposite - code reviewers, if they take their responsibility
serious, end up getting blamed for project delays because they keep
finding problems in the code.

Imagine a project where one employee writes the code and another
reviews it. Who do you think will get the credit (and bonus) ?
I bet it will be the person who wrote the code, not the person
who made sure that it is clean and free of bugs.

Guenter
