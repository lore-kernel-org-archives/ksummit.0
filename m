Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 30DF12D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 03:10:09 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9F6A934F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 03:10:08 +0000 (UTC)
Date: Wed, 2 May 2018 23:10:00 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20180503031000.GC29205@thunk.org>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<20180501211551.GI2714@sirena.org.uk>
	<CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180503020550.GP2714@sirena.org.uk>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 03, 2018 at 11:05:50AM +0900, Mark Brown wrote:
> On Wed, May 02, 2018 at 07:46:34PM +0000, Sasha Levin wrote:
> 
> > As you said, the regression should be fixed "asap", not "immediately".
> > It should go through some sort of review and testing the maintainers are
> > happy with, but unfourtenately it doesn't happen now.
> 
> Doesn't happen some of the time.  It's not like this is a universal
> problem.
> 
> Especially for driver specific things there's at times no realistic
> prospect of getting useful independent review of fixes, the hardware
> isn't always widely available and if the fix isn't a pure software thing
> at some point you just have to trust the judgement of the vendor.

And sometimes the Demon Murphy will cause a regression fix for user A,
to cause breakage for slightly different hardware belonging to user B.  :-(

   	 	      	       		 - Ted
