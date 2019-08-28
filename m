Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 40CA02FF9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 13:58:28 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AC3F842D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 13:58:27 +0000 (UTC)
Date: Wed, 28 Aug 2019 09:58:20 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Joel Fernandes <joelaf@google.com>
Message-ID: <20190828135820.GA24857@mit.edu>
References: <CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
	<CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
	<20190827195351.GA30710@kroah.com>
	<CAJWu+oq8jFnJ4iJ+R3swr-93eMwDgbWXe1W2Aiu-r+tuYSY5Ag@mail.gmail.com>
	<20190828090837.GA31704@kroah.com>
	<CAJWu+oocs3T8orMNt6AmdVgWONzZg0vD=E8EdvzE9rOi_XatUw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJWu+oocs3T8orMNt6AmdVgWONzZg0vD=E8EdvzE9rOi_XatUw@mail.gmail.com>
Cc: Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 28, 2019 at 08:38:33AM -0400, Joel Fernandes via Ksummit-discuss wrote:
> The idea is to make it trivial. All of the steps above are automatic
> and scripted, that's the whole point of what I was saying - to make it
> automatic. If it is not automated, then it is unlikely to be adopted
> widely or unlikely to stick. The final user will experience it as
> trivial.

I'm going to gently suggest that we've reached the point where instead
of people trying to argue for their suggested solution is to actually
*implement* a prototype.  It'll be a lot easier for people to judge a
particular solution if it exists, than to debate about vaporware.

Code implementing automation can always be adjusted, and questions
over whether the Link: trailer should be using lkml.kernel.org or
lore.kernel.org is really paint shedding.

Also remember that, different people can start using different
automations, and even different schemes, in parallel, and we can
actually try them out and see which is:

* most convenient for the patch submmiter
* most convenient for the maintainer
* most convenient for people who are doing code archeology

etc.  Then we can decide on what we want to use.  Trying to pick
something before people who actually have to use it day to day have
had a chance to try it in real life is how CIO's end up picking Lotus
Notes.

Even people who are arguing for using Change-Id will have better luck
if there is a commonly available solution in active use which makes
Change-Id's actually *useful* as a search token, as opposed to today,
where it is viewed (in practical terms, given today's usage, mostly
correctly) as a proxy for Gerrit instances hidden behind corporate
firewalls.

						- Ted
