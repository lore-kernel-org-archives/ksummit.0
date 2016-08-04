Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7F85F413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 03:14:27 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0056.hostedemail.com
	[216.40.44.56])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 507871DAC1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 03:14:26 +0000 (UTC)
Date: Wed, 3 Aug 2016 23:14:22 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20160803231422.5e2e0fd6@grimm.local.home>
In-Reply-To: <20160803161234.GA32965@dtor-ws>
References: <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<20160803141937.GA9180@kroah.com>
	<alpine.LNX.2.00.1608031642300.22028@cbobk.fhfr.pm>
	<57A21252.7000407@roeck-us.net> <20160803161234.GA32965@dtor-ws>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 3 Aug 2016 09:12:34 -0700
Dmitry Torokhov <dmitry.torokhov@gmail.com> wrote:

> When I put cc:stable it is simply a suggestion for stable maintainers to
> figure out if this commit is suitable for _their_ stable. I might have
> an idea about n-1.x stable series but I certainly do not have any desire
> nor time to research whether this patch applicable to 3.2 or 3.0 stable
> series.

Can you at least find the commit that introduced the bug that a patch
fixes? I do that all the time. It's not that hard. git blame is prefect
for such things.


 git blame broken-file.c

Find the commit that contains the broken code.

 git show SHA1-OF-WHAT-I-FOUND

Oh, it's a whitespace change (curses a little).

 git blame SHA1-OF-WHAT-I-FOUND~1 broken-file.c

(the ~1 will give you the tree before that whitespace fix)

Find the commit that contains the broken code.

Sometimes it takes a few iterations of the above, but once I find the
commit, I have what I need for the "Fixes" tag.

Now, I like to also add the stable range. To do that, I go to my Linus
tree, and do:

 git describe --contains SHA1-OF-BROKEN-COMMIT

and wala, it tells me what release that was added. Like:

  git describe --contains 85f2b08268c01
v3.14-rc1~82^2~40

Then I know to add:

 Cc: stable@vger.kernel.org # v3.14+

-- Steve
