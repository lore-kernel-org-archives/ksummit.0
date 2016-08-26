Return-Path: <matthew.garrett@coreos.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4FC5671
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 02:30:48 +0000 (UTC)
Received: from mail-yb0-f172.google.com (mail-yb0-f172.google.com
	[209.85.213.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C9673279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 02:30:47 +0000 (UTC)
Received: by mail-yb0-f172.google.com with SMTP id d10so22917081ybi.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 25 Aug 2016 19:30:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160826005914.GA12749@kroah.com>
References: <e315013e77cc851b040b5b5f4fe9f0bf@motives.com>
	<20160824130832.GA28564@kroah.com>
	<1472052583.61594.577.camel@infradead.org>
	<20160824174724.GE30853@kroah.com>
	<20160824205011.GA31615@ebb.org> <20160824215447.GA5368@kroah.com>
	<20160825040619.GA32072@ebb.org> <20160826005914.GA12749@kroah.com>
From: Matthew Garrett <mjg59@coreos.com>
Date: Thu, 25 Aug 2016 22:30:46 -0400
Message-ID: <CAPeXnHvFYdxDBTagF9RnDUg-ju96kiK_8LYXq-d0wn-uTOpC4w@mail.gmail.com>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset=UTF-8
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

On Thu, Aug 25, 2016 at 8:59 PM, Greg KH <greg@kroah.com> wrote:
> I too have had people say to my face, numerous times, "you think that we
> have to follow the GPL?  Ok, then take us to Court.  We won't comply
> otherwise."  And guess what, no one took anyone to court, and every
> single time, I ended up with the code[1].

And yet, if you and I were to go into a store today I bet we could
find more examples of infringing Linux than compliant. Of the ones
that *are* compliant, I strongly suspect that most would be companies
that were either sued over Busybox or came very close to being sued
over Busybox. Sure, it's not an approach that would have worked with
Intel or IBM, but they're a tiny fraction of the Linux that's sold.

If your focus is mainly on "How can we maximise contribution of $ and
developers to Linux", then yes, your approach makes sense. But that
comes at the cost of a vast number of users left with closed devices,
abandoned by their manufacturers, waiting for someone to find another
massive security flaw that we left behind in 2.6. These people matter,
and we shouldn't ignore their needs.

We've already got plenty of corporate investment. Let's not forget
that many of us are here because Linux gave us a way to hack on
devices that would otherwise have been closed to us, and let's do what
we can to ensure that the next generation of interested hackers have
the same opportunity.
