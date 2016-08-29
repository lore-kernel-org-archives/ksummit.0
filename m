Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D25DF360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 19:04:34 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 55A27226
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 19:04:34 +0000 (UTC)
Message-ID: <1472497471.2376.32.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Linus Torvalds <torvalds@linux-foundation.org>, Rik van Riel
	<riel@redhat.com>
Date: Mon, 29 Aug 2016 12:04:31 -0700
In-Reply-To: <CA+55aFz98VJR8RNv2=zuV0y4Ke_EmCyAR71eMNdq5p6cYm4OAw@mail.gmail.com>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<20160827183550.GB1601@katana> <20160828074706.GB1370@kroah.com>
	<1472492553.32433.108.camel@redhat.com>
	<CA+55aFz98VJR8RNv2=zuV0y4Ke_EmCyAR71eMNdq5p6cYm4OAw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2016-08-29 at 11:49 -0700, Linus Torvalds wrote:
> On Mon, Aug 29, 2016 at 10:42 AM, Rik van Riel <riel@redhat.com>
> wrote:
> > 
> > Companies like IBM and SGI started participating in Linux because
> > they knew no competitor would run off with their code, improve it
> > slightly, and offer a proprietary product for sale based it.
> 
> Absolutely.
> 
> Right now we're in the situation that a lot of companies are very
> suspicious of the GPL, I do agree with Bradley on that.
> 
> But we put the blame on very different things - I at least partly 
> very much do blame the "culture" that goes with the GPL.  Corporate 
> users do see the hostility towards commercial use that we have in 
> some quarters.
> 
> We should be much more vocal about how it protects even companies 
> from people taking advantage of their code. Yes, they'll always want 
> to have their "value add" on top, but we should push the GPL as a 
> great model for core infrastructure everywhere.
> 
> We should strive to make companies *like* the GPL, and encourage
> exactly the kinds of things you mention.

As I said way far upthread: this is how I sold the GPL to Parallels.  I
definitely have real world experience of doing this and I'm happy to do
it for other companies and be part of the crowd that does this
encouragement.  We have a lot of support within the industry (Martin
Fink, ex HP CTO springs immediately to mind here).

As a side note: if you own a project you want to open source, Apache-2
ends up being practically the worst licence imaginable: not only can
your competitors make proprietary modified copies of your code they
don't have to show you, but they also gain rights to your patents with
which to do it.

James
