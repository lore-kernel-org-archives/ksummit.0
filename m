Return-Path: <paul@pwsan.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 567B0ADD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 18:54:27 +0000 (UTC)
Received: from utopia.booyaka.com (utopia.booyaka.com [74.50.51.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3014120398
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 18:54:25 +0000 (UTC)
Date: Wed, 28 May 2014 18:47:43 +0000 (UTC)
From: Paul Walmsley <paul@pwsan.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
Message-ID: <alpine.DEB.2.02.1405281832550.1280@utopia.booyaka.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Sat, 24 May 2014, James Bottomley wrote:

> I'm sure there are many other things people could suggest.

What's needed is to bring quality reviewers up to the same level of 
recognition and control as maintainers.

Ideally, maintainers would recognize quality reviewers, and list them in 
the MAINTAINERS file - perhaps with an "R:" tag?  Maintainers would be 
expected to designate at least one quality reviewer, but ideally more, for 
a given subsystem.  

Then we should require every patch to have at least one "Reviewed-by:", 
aside from the maintainer's "Signed-off-by:" before being merged.  This 
"Reviewed-by:" could come from the maintainer, but ideally would come from 
a quality reviewer.

Patch submitters would need to get their patches reviewed by at least one 
of the recognized reviewers before expecting it to be merged.

Part of the goal here would also be to convert quality reviewers into 
co-maintainers over time, so maintainership duties can be spread among a 
larger group of people.


- Paul
