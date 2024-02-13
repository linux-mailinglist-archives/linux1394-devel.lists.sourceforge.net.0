Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C50FC852C09
	for <lists+linux1394-devel@lfdr.de>; Tue, 13 Feb 2024 10:12:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rZopb-0000UB-Gj;
	Tue, 13 Feb 2024 09:12:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rZopa-0000U5-L2
 for linux1394-devel@lists.sourceforge.net;
 Tue, 13 Feb 2024 09:11:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LsTYrnk1fZzcsuOvYKmhPihjTKsTVTMoyQPcl13ttI8=; b=WXaqqrwYHYL+bWdXSB4MnpU5Ak
 yMODRbBUR6kJ1rv7153URArdvUK45TbDslJFolBEaZWGKJ+ZnJ88+IAIEyDVm3h9CtQYVXS0APem0
 Ka6KCid5uuLhhRZ9tuA4C+5qomHMqdNzY5sIBScf33qle9DAvqK+n7VWmhvMujdZkFZU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LsTYrnk1fZzcsuOvYKmhPihjTKsTVTMoyQPcl13ttI8=; b=CPuUZq7HWQuWhYhpsAkztm665D
 U7AFVw5NoF/Fn1lWVAX+VTNz2VgiLy6oCsvpWJp/m24xvjW0rkqShvVb6EvMn1WpVNDYpf1HfMQl1
 gWNc3daMxgUu3jCMHEQSrqcs/BDfp2t4PIxrmXI/2eKRbLl2TwQGdr3T+c0Kxw3jFABE=;
Received: from pb-smtp1.pobox.com ([64.147.108.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rZopY-0006SK-Sm for linux1394-devel@lists.sourceforge.net;
 Tue, 13 Feb 2024 09:11:59 +0000
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id B485F1C14E7;
 Tue, 13 Feb 2024 04:11:51 -0500 (EST) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:cc:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=sasl; bh=g13l6N6KaE5nnbUSszHi5v3e009kKq6/nDQaYk7
 Z1yc=; b=hBXpHuyPPIdBg/b35Z2BjswSPon73pw4foqYHB6KHKgeoTo7unIOdJ0
 1d6kTsk7aOO5PGGuXovIJpNsLCMGcMDymWluu7Dk1zobxWC473pGbGC5NFa+SBe0
 Bg6EiSZvdrpFaG7SF10ugq8O9W1lS8FuibBdOwS029KVHp6LGYTY=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id 9DBA61C14E4;
 Tue, 13 Feb 2024 04:11:51 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 18A8B1C14E3;
 Tue, 13 Feb 2024 04:11:51 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id B5B2DC03C4;
 Tue, 13 Feb 2024 01:11:49 -0800 (PST)
Date: Tue, 13 Feb 2024 01:11:46 -0800
From: Adam Goldman <adamg@pobox.com>
To: Tasos Sahanidis <tasos@tasossah.com>
Subject: Re: Question regarding linux1394 and bug report
Message-ID: <ZcsyUsWtzoLzfPwu@iguana.24-8.net>
References: <67f8f49f-0e95-49d4-abf5-9cb4692d9dd3@tasossah.com>
 <20240105150222.GA11325@workstation.local>
 <ZahqJTeKy6W2IRix@iguana.24-8.net>
 <36ab63e4-91a2-415f-9dca-0bd748aa58da@tasossah.com>
 <Za9jagkjzL4uVFkC@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Za9jagkjzL4uVFkC@iguana.24-8.net>
X-Pobox-Relay-ID: EC52EAEE-CA4F-11EE-8612-78DCEB2EC81B-07713566!pb-smtp1.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Tasos, I can confirm that the same problem occurs on a
 JVC GR-D30U connected to an XIO2213B OHCI chip. So it's not specific to the
 TSB43AB22A, and it affects several JVC models. I haven't investigated fully.
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.70 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rZopY-0006SK-Sm
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Tasos,

I can confirm that the same problem occurs on a JVC GR-D30U connected to 
an XIO2213B OHCI chip. So it's not specific to the TSB43AB22A, and it 
affects several JVC models. I haven't investigated fully.

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
