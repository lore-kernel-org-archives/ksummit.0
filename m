Return-Path: <gregkh@linuxfoundation.org>
Date: Fri, 23 Jun 2017 22:52:29 +0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Laura Abbott <labbott@redhat.com>
Message-ID: <20170623145229.GB1855@kroah.com>
References: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug reporting feedback
 loop
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jun 21, 2017 at 03:34:11PM -0700, Laura Abbott wrote:
> - There's still a gap between when bugs hit Linus' tree and when
> stable releases come out. This is not a knock against stable or
> a request for stable to go faster :). I try
> and monitor stable@ for fixes but there still seems to be a
> large time gap for identifying fixes that have been fixes in
> master that are relevant to a recent stable release.

Ok, I'll bite, what exactly do you mean by "large time"?  During the
-rc1 merge window, it can take a few weeks for me to catch up with the
large onslaught of patches marked for stable, but almost all of those
were determined by the develoers to not be all-so-serious, as they were
delayed in getting to Linus for -rc1, and not before.

You can always email and ask for specific patches to be queued up now,
as I go through the list in a semi-random manner.

After the big -rc1 chunk of patches are merged, it's usually only a week
at most before the patches hit a stable release, people usually complain
it goes too fast, not that it's too slow these days.

thanks,

greg k-h
