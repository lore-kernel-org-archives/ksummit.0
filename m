Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 36764B88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 21:05:27 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id E01EC101
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 21:05:25 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 08 Jul 2015 23:31:52 +0200
Message-ID: <2008329.GxHAOdfmIf@vostro.rjw.lan>
In-Reply-To: <20150708160715.351ccf19@gandalf.local.home>
References: <201507080121.41463.PeterHuewe@gmx.de> <6295903.xabUbmnLAs@avalon>
	<20150708160715.351ccf19@gandalf.local.home>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	jic23@jic23.retrosnub.co.uk, Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
	Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday, July 08, 2015 04:07:15 PM Steven Rostedt wrote:
> On Wed, 08 Jul 2015 22:56:38 +0300
> Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
>  
> > Reviewed-by or Acked-by metrics are unfortunately very easy to game. If we 
> 
> I'm not worried about Acked-by, as that (to me anyway) is just a
> maintainer telling other maintainers that they are fine with the
> change, and they are OK with it going in via another tree.
> 
> I also sometimes give an Acked-by, as a "I took a quick look, and it
> looks good to me". I only add a Reviewed-by tag if I took enough effort
> to understand every part of the patch as if I wrote it myself.

I do that too and that's my understanding of what the tag is for.

However, some people treat it as a this-patch-looks-good-to-me tag.

But regardless of what tags you use, if you say something along the lines of:

- I like A (because of X).
- I don't like B (because of Y).
- C will break things because of Z.

in your review, every maintainer will be grateful for that.  I'd like people
doing that kind of stuff to be recognized in some special way, because that's
really really helpful (and we need it).

Honestly, I'm not sure how to make that happen.

Thanks,
Rafael
