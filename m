Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1E9AA596
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 14:33:08 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 97871685
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 14:33:07 +0000 (UTC)
Message-ID: <1525357984.3225.12.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jani Nikula <jani.nikula@intel.com>, "Theodore Y. Ts'o" <tytso@mit.edu>,
	Sasha Levin <Alexander.Levin@microsoft.com>
Date: Thu, 03 May 2018 07:33:04 -0700
In-Reply-To: <877eol808s.fsf@intel.com>
References: <20180501163818.GD1468@sasha-vm>
	<20180501194450.GD10479@thunk.org> <20180501200019.GA7397@sasha-vm>
	<20180501205448.GE10479@thunk.org> <877eol808s.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2018-05-03 at 14:08 +0300, Jani Nikula wrote:
> On Tue, 01 May 2018, "Theodore Y. Ts'o" <tytso@mit.edu> wrote:
> > Post -rc3 or -rc4, in my opinion bug fixes should wait until the
> > next
> > merge window before they get merged at all.
> 
> What are -rc5 and later for then if not bug fixes? Baffled.

They're definitely for bug fixes, but there's a spectrum: obvious bug
fixes with no side effects are easy to justify.  More complex bug fixes
run the risk of having side effects which introduce other bugs, so
could potentially destabilize the -rc process.  In SCSI we tend to look
at what the user visible effects of the bug are in the post -rc5 region
and if they're slight or wouldn't be visible to most users, we'll hold
them over.  If the fix looks complex and we're not sure we caught the
ramifications, we often add it to the merge window tree with a cc to
stable and a note saying to wait X weeks before actually adding to the
stable tree just to make sure no side effects show up with wider
testing.  So, as with most things, it's a judgment call for the
maintainer.

James
