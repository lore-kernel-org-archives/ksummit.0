Return-Path: <joe@perches.com>
Message-ID: <1473865997.32273.36.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Guenter Roeck <linux@roeck-us.net>, Greg KH <greg@kroah.com>
Date: Wed, 14 Sep 2016 08:13:17 -0700
In-Reply-To: <77a6ad59-9fdc-7d2b-0186-49016e05a403@roeck-us.net>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan> <20160914020332.GA9558@cloud>
	<1473819862.32273.16.camel@perches.com>
	<20160914115456.GB22341@kroah.com>
	<1473863028.32273.28.camel@perches.com>
	<77a6ad59-9fdc-7d2b-0186-49016e05a403@roeck-us.net>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linux-foundation.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] checkpatch/Codingstyle and
 trivial patch spam
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2016-09-14 at 07:45 -0700, Guenter Roeck wrote:
> On 09/14/2016 07:23 AM, Joe Perches wrote:
> > So what would use propose instead?
> Introduce .checkpatch ?

A generic .checkpatch.conf option already exists which is
looked for in . then $HOME

Do you mean a directory based hierarchy of .checkpatch.conf
files in the git tree so a maintainer could add something like:

$ cat include/trace/events/.checkpatch.conf
--ignore=spacing

and that applies only to that directory?

That might get confusing and have conflicting options
on the command line.
