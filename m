Return-Path: <Julia.Lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 95C1C483
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 11:55:30 +0000 (UTC)
Received: from isis.lip6.fr (isis.lip6.fr [132.227.60.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EE365FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 11:55:29 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Fri, 26 Aug 2016 13:55:27 +0200
From: Julia Lawall <Julia.Lawall@lip6.fr>
To: Greg KH <gregkh@linuxfoundation.org>
In-Reply-To: <20160826112635.GA27627@kroah.com>
References: <20160826044651.GA25341@sasha-lappy>
	<20160826112635.GA27627@kroah.com>
Message-ID: <cfea840fae5911cdff7fbad535e9261b@newmail.lip6.fr>
Cc: ksummit-discuss@lists.linuxfoundation.org, "Levin,
	Alexander" <alexander.levin@verizon.com>
Subject: Re: [Ksummit-discuss] Self nomination - Sasha Levin
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Not sure if I was clear about what I was asking you to agree to :)

Basically, we can take the patches sent to stable and the patches not 
sent to stable as a training set, but then the machine learning comes up 
with some algorithm that produces some results.  An expert is needed to 
evaluate the results.  Ie for a thousand (number chosen at random) 
patches, if the algorithm says it is a bug fixing patch, is it or isn't 
it, and vice versa.  Of course, we could also evaluate on patches that 
previously have and have not been sent too stable, but there is a 
problem there, because our goal is to have more patches sent to stable 
than are already being sent there, so we need to show that the algorithm 
can capture what humans are missing.

julia
