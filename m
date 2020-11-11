Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC3B2AFB5E
	for <lists+linux1394-devel@lfdr.de>; Wed, 11 Nov 2020 23:29:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kcycZ-0003yo-RC; Wed, 11 Nov 2020 22:29:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bnghywe@hotmail.com>) id 1kcycZ-0003yd-47
 for linux1394-devel@lists.sourceforge.net; Wed, 11 Nov 2020 22:29:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Content-Transfer-Encoding:Content-Type:To:
 Subject:From:Sender:Reply-To:Message-ID:Cc:MIME-Version:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TuwuYQPAhXUApsE9jfA2bbfNpkTPSqdSFIODUzm7oLI=; b=Uk4nOPvxuXbtFEaXfo4QXSJOjo
 BDoEBU6AOurUzxXTOdEHsp2CgQdjxkJDkmzBwh5ZkJyevuQBCsHE0lZQ0+u0vddFnQ53vh+qJaOt+
 14s9whl96NQ57g6RsBPzNHf6+L/9Ga0NJkVOPxPMZ8VGvkozOUAV7pa+eIqe1Z5rQ0w0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Content-Transfer-Encoding:Content-Type:To:Subject:From:Sender:
 Reply-To:Message-ID:Cc:MIME-Version:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TuwuYQPAhXUApsE9jfA2bbfNpkTPSqdSFIODUzm7oLI=; b=dkBJLc7Zcmg9qoNWFgQIuE3Frt
 LROWjdbvgaB6f2LU0UB+6PcxEdLt2wx6REUAUjXCAhqLVctFs1bI0JEsgRNN2UGk9RKVVobTibfFE
 2GvKfA3i5pNewNbiwNThGHDoF4J8+pv1axPxmo7nPY4CgUqHcAULnja8ljeoyV10Otag=;
Received: from [59.50.30.21] (helo=hotmail.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kcycC-008RmY-HF
 for linux1394-devel@lists.sourceforge.net; Wed, 11 Nov 2020 22:29:42 +0000
From: bnghywe@hotmail.com
Subject: =?GB2312?B?v6rLsMaxbDM2MjA5MTIzNzE=?=
To: linux1394-devel@lists.sf.net
Date: Thu, 12 Nov 2020 06:29:20 +0800
X-Priority: 3
X-Mailer: Microsoft Outlook Express 6.00.2800.1106
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (bnghywe[at]hotmail.com)
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?59.50.30.21>]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kcycC-008RmY-HF
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
MIME-Version: 1.0
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
Message-Id: <E1kcycZ-0003yo-RC@sfs-ml-1.v29.lw.sourceforge.com>

v6rLsMaxbDM2MjA5MTIzNzEgzqLQxc2ssr0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwptYWlsaW5nIGxpc3QgbGludXgxMzk0LWRldmVsQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9saW51eDEzOTQtZGV2ZWwK
