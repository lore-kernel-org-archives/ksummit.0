Return-Path: <corbet@lwn.net>
Date: Mon, 26 Jun 2017 16:18:28 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Jiri Kosina <jkosina@suse.cz>
Message-ID: <20170626161828.3914fcc1@lwn.net>
In-Reply-To: <alpine.LSU.2.20.1706252254190.30709@cbobk.fhfr.pm>
References: <20170623123936.42dab05f@lwn.net>
	<20170624074641.4820fecd@vento.lan>
	<1779146.rtcHP5MkoH@aspire.rjw.lan>
	<20170624104142.70677fcb@vento.lan>
	<alpine.LSU.2.20.1706252254190.30709@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
Cc: Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Documentation issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, 25 Jun 2017 22:56:07 +0200 (CEST)
Jiri Kosina <jkosina@suse.cz> wrote:

> Unfortunately option (3) has also been applied to some of the files:
> 
> 	$ ll Documentation/kernel-parameters.txt
> 	ls: cannot access 'Documentation/kernel-parameters.txt': No such file or directory
> 
> I wasn't sure whether this was intentional or not. But if not, I'll 
> happily send a patch that introduces a symlink.

Worries about moving well-known files are why I delayed some of this stuff
a bit so I could bring it up at conferences and the kernel summit.  It
only proceeded after I didn't get any real pushback in those settings.

In general, we move files around in the kernel tree all the time.  We
don't normally leave symlinks behind; indeed, we never do.  Instead, we
figure out where the file moved to and get on with life.  Are
documentation files somehow different, needing different rules in this
regard?  I wouldn't mind some clarity on that point.

My hope (cue inspirational music here) is that, someday, it will be
possible to type "ls Documentation" and get back a reasonably sized
listing that is easy to explore.  Let's just say that's not the situation
at the moment.  Getting there will certainly involve moving files around;
replacing them with symlinks or pointer files would, to a real extent,
defeat the purpose.

jon
