Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7A40FBCA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 00:24:05 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id C2EF4134
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 00:24:03 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 25 Aug 2015 02:51:35 +0200
Message-ID: <110805972.XDbP1lDh1S@vostro.rjw.lan>
In-Reply-To: <20150824220525.GA15701@kroah.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CAGXu5jLtG0Jaf0hDkNtditSSGMxwKF8QC9aWq2Vf1A=FoAYJgA@mail.gmail.com>
	<20150824220525.GA15701@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Emily Ratliff <eratliff@linuxfoundation.org>, Jiri Kosina <jkosina@suse.cz>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday, August 24, 2015 05:05:25 PM Greg KH wrote:
> On Mon, Aug 24, 2015 at 12:00:15PM -0700, Kees Cook wrote:
> > On Mon, Aug 24, 2015 at 11:52 AM, Thomas Gleixner <tglx@linutronix.de> wrote:
> > > On Mon, 24 Aug 2015, Kees Cook wrote:
> > >> On Mon, Aug 24, 2015 at 4:56 AM, James Morris <jmorris@namei.org> wrote:
> > >> This is far from a comprehensive list, though. The biggest value, I
> > >> think, would be in using KERNEXEC, UDEREF, USERCOPY, and the plugins
> > >> for constification and integer overflow.
> > >
> > > There is another aspect. We need to make developers more aware of the
> > > potential attack issues. I learned my lesson with the futex disaster
> > > and since then I certainly look with a different set of eyes at user
> > > space facing code. I doubt that we want that everyone experiences the
> > > disaster himself (though that's a very enlightening experience), but
> > > we should try to document incidents and the lessons learned from
> > > them. Right now we just rely on those who are deep into the security
> > > realm or the few people who learned it the hard way.
> > 
> > Yeah, it can be a hard perspective shift to make. And shifting the
> > thinking about the kernel itself to always operating in a compromised
> > state makes thinking about how to protect it much easier. User space
> > is trying to hurt us! :)
> 
> Microsoft's security team, which was responsible for forcing all of
> their developers to undergo some security training every year, has
> boiled it all down to these simple 4 words:
> 
> 	All input is evil.

Right.

And not just input, but also everything you created and then allowed
someone else to modify.

Thanks,
Rafael
