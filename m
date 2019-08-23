Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4789C1235
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:36:29 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 842A489E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:36:26 +0000 (UTC)
Date: Thu, 22 Aug 2019 21:36:19 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Olof Johansson <olof@lixom.net>
Message-ID: <20190823013619.GA8130@mit.edu>
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	Dmitry Vyukov <dvyukov@google.com>, David Rientjes <rientjes@google.com>,
	Dmitry Torokhov <dtor@chromium.org>
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

On Thu, Aug 22, 2019 at 05:45:59PM -0700, Olof Johansson wrote:
> 
> Nope, for the same reason I already mentioned: In 2 years when Google
> deprecates Chromium and EOL's the product and project (see: Reader,
> Google+, Youtube messaging), there will be no way to get to the
> history. (I know, unlikely in this case, but URLs move without
> redirects, etc).

That concern applies to URL's.  Red Hat could get shut down by IBM, at
which point all of the links to bugzilla.redhat.com could go away.
Yeah, unlikely, but so is chromium.gerrit.com going away.  We never
requested a commitment from Red Hat that bugzilla.redhat.com would go
away before we allowed Red Hat bugzilla links in git descriptions.
Ditto for launchpad.net, etc.  In fact, I'd argue that launchpad is
even more likely to disappear given that it's all subject to the whims
of Mark Shuttleworth.  :-)

Ditto links to patchwork.freedesktop.org, patchwork.ozlabs.org, etc.

Surely it's obvious that:

Link: https://linux-review.googlesource.com/c/1158

is more useful than:

Change-Id: I3268f9036512c4378cde1da37e0612b43ed4d384

And given that we're not disallowing other Link: trailers, it seems to
be purely an anti-Gerrit bias which is causing people to say, "Nein!"
for links into Gerrit servers as opposed to Bugzilla or Patchwork
servers.

					- Ted
